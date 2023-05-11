import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_a_struct.g.dart';

abstract class ItemAStruct implements Built<ItemAStruct, ItemAStructBuilder> {
  static Serializer<ItemAStruct> get serializer => _$itemAStructSerializer;

  String? get imgSrc;

  String? get title;

  DocumentReference? get ref;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ItemAStructBuilder builder) => builder
    ..imgSrc = ''
    ..title = ''
    ..firestoreUtilData = FirestoreUtilData();

  ItemAStruct._();
  factory ItemAStruct([void Function(ItemAStructBuilder) updates]) =
      _$ItemAStruct;
}

ItemAStruct createItemAStruct({
  String? imgSrc,
  String? title,
  DocumentReference? ref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemAStruct(
      (i) => i
        ..imgSrc = imgSrc
        ..title = title
        ..ref = ref
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ItemAStruct? updateItemAStruct(
  ItemAStruct? itemA, {
  bool clearUnsetFields = true,
}) =>
    itemA != null
        ? (itemA.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addItemAStructData(
  Map<String, dynamic> firestoreData,
  ItemAStruct? itemA,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itemA == null) {
    return;
  }
  if (itemA.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && itemA.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemAData = getItemAFirestoreData(itemA, forFieldValue);
  final nestedData = itemAData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = itemA.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getItemAFirestoreData(
  ItemAStruct? itemA, [
  bool forFieldValue = false,
]) {
  if (itemA == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(ItemAStruct.serializer, itemA);

  // Add any Firestore field values
  itemA.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemAListFirestoreData(
  List<ItemAStruct>? itemAs,
) =>
    itemAs?.map((i) => getItemAFirestoreData(i, true)).toList() ?? [];
