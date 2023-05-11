// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_file_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalFileStruct> _$localFileStructSerializer =
    new _$LocalFileStructSerializer();

class _$LocalFileStructSerializer
    implements StructuredSerializer<LocalFileStruct> {
  @override
  final Iterable<Type> types = const [LocalFileStruct, _$LocalFileStruct];
  @override
  final String wireName = 'LocalFileStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalFileStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.path;
    if (value != null) {
      result
        ..add('path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rawBytes;
    if (value != null) {
      result
        ..add('rawBytes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LocalFileStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalFileStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rawBytes':
          result.rawBytes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$LocalFileStruct extends LocalFileStruct {
  @override
  final String? path;
  @override
  final String? rawBytes;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LocalFileStruct([void Function(LocalFileStructBuilder)? updates]) =>
      (new LocalFileStructBuilder()..update(updates))._build();

  _$LocalFileStruct._(
      {this.path, this.rawBytes, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LocalFileStruct', 'firestoreUtilData');
  }

  @override
  LocalFileStruct rebuild(void Function(LocalFileStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalFileStructBuilder toBuilder() =>
      new LocalFileStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalFileStruct &&
        path == other.path &&
        rawBytes == other.rawBytes &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, rawBytes.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalFileStruct')
          ..add('path', path)
          ..add('rawBytes', rawBytes)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LocalFileStructBuilder
    implements Builder<LocalFileStruct, LocalFileStructBuilder> {
  _$LocalFileStruct? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _rawBytes;
  String? get rawBytes => _$this._rawBytes;
  set rawBytes(String? rawBytes) => _$this._rawBytes = rawBytes;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LocalFileStructBuilder() {
    LocalFileStruct._initializeBuilder(this);
  }

  LocalFileStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _rawBytes = $v.rawBytes;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalFileStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalFileStruct;
  }

  @override
  void update(void Function(LocalFileStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalFileStruct build() => _build();

  _$LocalFileStruct _build() {
    final _$result = _$v ??
        new _$LocalFileStruct._(
            path: path,
            rawBytes: rawBytes,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'LocalFileStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
