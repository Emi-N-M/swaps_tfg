import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'local_file_struct.g.dart';

abstract class LocalFileStruct
    implements Built<LocalFileStruct, LocalFileStructBuilder> {
  static Serializer<LocalFileStruct> get serializer =>
      _$localFileStructSerializer;

  String? get path;

  String? get rawBytes;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LocalFileStructBuilder builder) => builder
    ..path = ''
    ..rawBytes = ''
    ..firestoreUtilData = FirestoreUtilData();

  LocalFileStruct._();
  factory LocalFileStruct([void Function(LocalFileStructBuilder) updates]) =
      _$LocalFileStruct;
}

LocalFileStruct createLocalFileStruct({
  String? path,
  String? rawBytes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocalFileStruct(
      (l) => l
        ..path = path
        ..rawBytes = rawBytes
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LocalFileStruct? updateLocalFileStruct(
  LocalFileStruct? localFile, {
  bool clearUnsetFields = true,
}) =>
    localFile != null
        ? (localFile.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLocalFileStructData(
  Map<String, dynamic> firestoreData,
  LocalFileStruct? localFile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (localFile == null) {
    return;
  }
  if (localFile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && localFile.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final localFileData = getLocalFileFirestoreData(localFile, forFieldValue);
  final nestedData = localFileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = localFile.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLocalFileFirestoreData(
  LocalFileStruct? localFile, [
  bool forFieldValue = false,
]) {
  if (localFile == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LocalFileStruct.serializer, localFile);

  // Add any Firestore field values
  localFile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocalFileListFirestoreData(
  List<LocalFileStruct>? localFiles,
) =>
    localFiles?.map((l) => getLocalFileFirestoreData(l, true)).toList() ?? [];
