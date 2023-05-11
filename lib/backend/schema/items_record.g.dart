// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsRecord> _$itemsRecordSerializer = new _$ItemsRecordSerializer();

class _$ItemsRecordSerializer implements StructuredSerializer<ItemsRecord> {
  @override
  final Iterable<Type> types = const [ItemsRecord, _$ItemsRecord];
  @override
  final String wireName = 'ItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ItemsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ItemsRecord extends ItemsRecord {
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemsRecord([void Function(ItemsRecordBuilder)? updates]) =>
      (new ItemsRecordBuilder()..update(updates))._build();

  _$ItemsRecord._({this.uid, this.ffRef}) : super._();

  @override
  ItemsRecord rebuild(void Function(ItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRecordBuilder toBuilder() => new ItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRecord && uid == other.uid && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsRecord')
          ..add('uid', uid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemsRecordBuilder implements Builder<ItemsRecord, ItemsRecordBuilder> {
  _$ItemsRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemsRecordBuilder() {
    ItemsRecord._initializeBuilder(this);
  }

  ItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsRecord;
  }

  @override
  void update(void Function(ItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsRecord build() => _build();

  _$ItemsRecord _build() {
    final _$result = _$v ?? new _$ItemsRecord._(uid: uid, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
