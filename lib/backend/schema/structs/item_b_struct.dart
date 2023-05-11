import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_b_struct.g.dart';

abstract class ItemBStruct implements Built<ItemBStruct, ItemBStructBuilder> {
  static Serializer<ItemBStruct> get serializer => _$itemBStructSerializer;

  String? get imgSrc;

  String? get title;

  String? get description;

  DocumentReference? get ref;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ItemBStructBuilder builder) => builder
    ..imgSrc = ''
    ..title = ''
    ..description = ''
    ..firestoreUtilData = FirestoreUtilData();

  ItemBStruct._();
  factory ItemBStruct([void Function(ItemBStructBuilder) updates]) =
      _$ItemBStruct;
}

ItemBStruct createItemBStruct({
  String? imgSrc,
  String? title,
  String? description,
  DocumentReference? ref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemBStruct(
      (i) => i
        ..imgSrc = imgSrc
        ..title = title
        ..description = description
        ..ref = ref
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ItemBStruct? updateItemBStruct(
  ItemBStruct? itemB, {
  bool clearUnsetFields = true,
}) =>
    itemB != null
        ? (itemB.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addItemBStructData(
  Map<String, dynamic> firestoreData,
  ItemBStruct? itemB,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itemB == null) {
    return;
  }
  if (itemB.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && itemB.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemBData = getItemBFirestoreData(itemB, forFieldValue);
  final nestedData = itemBData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = itemB.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getItemBFirestoreData(
  ItemBStruct? itemB, [
  bool forFieldValue = false,
]) {
  if (itemB == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(ItemBStruct.serializer, itemB);

  // Add any Firestore field values
  itemB.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemBListFirestoreData(
  List<ItemBStruct>? itemBs,
) =>
    itemBs?.map((i) => getItemBFirestoreData(i, true)).toList() ?? [];
