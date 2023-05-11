import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'liked_items_record.g.dart';

abstract class LikedItemsRecord
    implements Built<LikedItemsRecord, LikedItemsRecordBuilder> {
  static Serializer<LikedItemsRecord> get serializer =>
      _$likedItemsRecordSerializer;

  DocumentReference? get ownerRef;

  DocumentReference? get itemRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LikedItemsRecordBuilder builder) => builder;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('liked_items')
          : FirebaseFirestore.instance.collectionGroup('liked_items');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('liked_items').doc();

  static Stream<LikedItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LikedItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LikedItemsRecord._();
  factory LikedItemsRecord([void Function(LikedItemsRecordBuilder) updates]) =
      _$LikedItemsRecord;

  static LikedItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLikedItemsRecordData({
  DocumentReference? ownerRef,
  DocumentReference? itemRef,
}) {
  final firestoreData = serializers.toFirestore(
    LikedItemsRecord.serializer,
    LikedItemsRecord(
      (l) => l
        ..ownerRef = ownerRef
        ..itemRef = itemRef,
    ),
  );

  return firestoreData;
}
