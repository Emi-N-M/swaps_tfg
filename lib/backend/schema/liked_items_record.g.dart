// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LikedItemsRecord> _$likedItemsRecordSerializer =
    new _$LikedItemsRecordSerializer();

class _$LikedItemsRecordSerializer
    implements StructuredSerializer<LikedItemsRecord> {
  @override
  final Iterable<Type> types = const [LikedItemsRecord, _$LikedItemsRecord];
  @override
  final String wireName = 'LikedItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LikedItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ownerRef;
    if (value != null) {
      result
        ..add('ownerRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.itemRef;
    if (value != null) {
      result
        ..add('itemRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  LikedItemsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LikedItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ownerRef':
          result.ownerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'itemRef':
          result.itemRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$LikedItemsRecord extends LikedItemsRecord {
  @override
  final DocumentReference<Object?>? ownerRef;
  @override
  final DocumentReference<Object?>? itemRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LikedItemsRecord(
          [void Function(LikedItemsRecordBuilder)? updates]) =>
      (new LikedItemsRecordBuilder()..update(updates))._build();

  _$LikedItemsRecord._({this.ownerRef, this.itemRef, this.ffRef}) : super._();

  @override
  LikedItemsRecord rebuild(void Function(LikedItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikedItemsRecordBuilder toBuilder() =>
      new LikedItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikedItemsRecord &&
        ownerRef == other.ownerRef &&
        itemRef == other.itemRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerRef.hashCode);
    _$hash = $jc(_$hash, itemRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LikedItemsRecord')
          ..add('ownerRef', ownerRef)
          ..add('itemRef', itemRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LikedItemsRecordBuilder
    implements Builder<LikedItemsRecord, LikedItemsRecordBuilder> {
  _$LikedItemsRecord? _$v;

  DocumentReference<Object?>? _ownerRef;
  DocumentReference<Object?>? get ownerRef => _$this._ownerRef;
  set ownerRef(DocumentReference<Object?>? ownerRef) =>
      _$this._ownerRef = ownerRef;

  DocumentReference<Object?>? _itemRef;
  DocumentReference<Object?>? get itemRef => _$this._itemRef;
  set itemRef(DocumentReference<Object?>? itemRef) => _$this._itemRef = itemRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LikedItemsRecordBuilder() {
    LikedItemsRecord._initializeBuilder(this);
  }

  LikedItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerRef = $v.ownerRef;
      _itemRef = $v.itemRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikedItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LikedItemsRecord;
  }

  @override
  void update(void Function(LikedItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LikedItemsRecord build() => _build();

  _$LikedItemsRecord _build() {
    final _$result = _$v ??
        new _$LikedItemsRecord._(
            ownerRef: ownerRef, itemRef: itemRef, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
