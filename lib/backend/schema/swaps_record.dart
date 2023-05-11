import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'swaps_record.g.dart';

abstract class SwapsRecord implements Built<SwapsRecord, SwapsRecordBuilder> {
  static Serializer<SwapsRecord> get serializer => _$swapsRecordSerializer;

  String? get usernameB;

  ItemAStruct get itemA;

  ItemBStruct get itemB;

  String? get userImgSrcB;

  String? get userB;

  DateTime? get timeCreation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SwapsRecordBuilder builder) => builder
    ..usernameB = ''
    ..itemA = ItemAStructBuilder()
    ..itemB = ItemBStructBuilder()
    ..userImgSrcB = ''
    ..userB = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('swaps')
          : FirebaseFirestore.instance.collectionGroup('swaps');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('swaps').doc();

  static Stream<SwapsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SwapsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SwapsRecord._();
  factory SwapsRecord([void Function(SwapsRecordBuilder) updates]) =
      _$SwapsRecord;

  static SwapsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSwapsRecordData({
  String? usernameB,
  ItemAStruct? itemA,
  ItemBStruct? itemB,
  String? userImgSrcB,
  String? userB,
  DateTime? timeCreation,
}) {
  final firestoreData = serializers.toFirestore(
    SwapsRecord.serializer,
    SwapsRecord(
      (s) => s
        ..usernameB = usernameB
        ..itemA = ItemAStructBuilder()
        ..itemB = ItemBStructBuilder()
        ..userImgSrcB = userImgSrcB
        ..userB = userB
        ..timeCreation = timeCreation,
    ),
  );

  // Handle nested data for "itemA" field.
  addItemAStructData(firestoreData, itemA, 'itemA');

  // Handle nested data for "itemB" field.
  addItemBStructData(firestoreData, itemB, 'itemB');

  return firestoreData;
}
