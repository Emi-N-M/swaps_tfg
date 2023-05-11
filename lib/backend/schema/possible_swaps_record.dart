import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'possible_swaps_record.g.dart';

abstract class PossibleSwapsRecord
    implements Built<PossibleSwapsRecord, PossibleSwapsRecordBuilder> {
  static Serializer<PossibleSwapsRecord> get serializer =>
      _$possibleSwapsRecordSerializer;

  String? get usernameB;

  ItemAStruct get itemA;

  ItemBStruct get itemB;

  String? get userImgSrcB;

  String? get userB;

  bool? get haveIVoted;

  DateTime? get timeCreation;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PossibleSwapsRecordBuilder builder) => builder
    ..usernameB = ''
    ..itemA = ItemAStructBuilder()
    ..itemB = ItemBStructBuilder()
    ..userImgSrcB = ''
    ..userB = ''
    ..haveIVoted = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('possibleSwaps')
          : FirebaseFirestore.instance.collectionGroup('possibleSwaps');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('possibleSwaps').doc();

  static Stream<PossibleSwapsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PossibleSwapsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PossibleSwapsRecord._();
  factory PossibleSwapsRecord(
          [void Function(PossibleSwapsRecordBuilder) updates]) =
      _$PossibleSwapsRecord;

  static PossibleSwapsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPossibleSwapsRecordData({
  String? usernameB,
  ItemAStruct? itemA,
  ItemBStruct? itemB,
  String? userImgSrcB,
  String? userB,
  bool? haveIVoted,
  DateTime? timeCreation,
}) {
  final firestoreData = serializers.toFirestore(
    PossibleSwapsRecord.serializer,
    PossibleSwapsRecord(
      (p) => p
        ..usernameB = usernameB
        ..itemA = ItemAStructBuilder()
        ..itemB = ItemBStructBuilder()
        ..userImgSrcB = userImgSrcB
        ..userB = userB
        ..haveIVoted = haveIVoted
        ..timeCreation = timeCreation,
    ),
  );

  // Handle nested data for "itemA" field.
  addItemAStructData(firestoreData, itemA, 'itemA');

  // Handle nested data for "itemB" field.
  addItemBStructData(firestoreData, itemB, 'itemB');

  return firestoreData;
}
