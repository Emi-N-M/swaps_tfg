import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_items_record.g.dart';

abstract class UserItemsRecord
    implements Built<UserItemsRecord, UserItemsRecordBuilder> {
  static Serializer<UserItemsRecord> get serializer =>
      _$userItemsRecordSerializer;

  String? get title;

  String? get description;

  int? get likes;

  LatLng? get ubication;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get url;

  String? get storagePath;

  String? get userPhoto;

  String? get username;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserItemsRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..likes = 0
    ..url = ''
    ..storagePath = ''
    ..userPhoto = ''
    ..username = ''
    ..displayName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_items')
          : FirebaseFirestore.instance.collectionGroup('user_items');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_items').doc();

  static Stream<UserItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserItemsRecord._();
  factory UserItemsRecord([void Function(UserItemsRecordBuilder) updates]) =
      _$UserItemsRecord;

  static UserItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserItemsRecordData({
  String? title,
  String? description,
  int? likes,
  LatLng? ubication,
  DateTime? createdTime,
  String? url,
  String? storagePath,
  String? userPhoto,
  String? username,
  String? displayName,
}) {
  final firestoreData = serializers.toFirestore(
    UserItemsRecord.serializer,
    UserItemsRecord(
      (u) => u
        ..title = title
        ..description = description
        ..likes = likes
        ..ubication = ubication
        ..createdTime = createdTime
        ..url = url
        ..storagePath = storagePath
        ..userPhoto = userPhoto
        ..username = username
        ..displayName = displayName,
    ),
  );

  return firestoreData;
}
