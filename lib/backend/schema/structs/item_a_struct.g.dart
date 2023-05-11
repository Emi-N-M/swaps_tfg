// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_a_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemAStruct> _$itemAStructSerializer = new _$ItemAStructSerializer();

class _$ItemAStructSerializer implements StructuredSerializer<ItemAStruct> {
  @override
  final Iterable<Type> types = const [ItemAStruct, _$ItemAStruct];
  @override
  final String wireName = 'ItemAStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemAStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.imgSrc;
    if (value != null) {
      result
        ..add('imgSrc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ItemAStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemAStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imgSrc':
          result.imgSrc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ItemAStruct extends ItemAStruct {
  @override
  final String? imgSrc;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ItemAStruct([void Function(ItemAStructBuilder)? updates]) =>
      (new ItemAStructBuilder()..update(updates))._build();

  _$ItemAStruct._(
      {this.imgSrc, this.title, this.ref, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ItemAStruct', 'firestoreUtilData');
  }

  @override
  ItemAStruct rebuild(void Function(ItemAStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemAStructBuilder toBuilder() => new ItemAStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemAStruct &&
        imgSrc == other.imgSrc &&
        title == other.title &&
        ref == other.ref &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imgSrc.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemAStruct')
          ..add('imgSrc', imgSrc)
          ..add('title', title)
          ..add('ref', ref)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ItemAStructBuilder implements Builder<ItemAStruct, ItemAStructBuilder> {
  _$ItemAStruct? _$v;

  String? _imgSrc;
  String? get imgSrc => _$this._imgSrc;
  set imgSrc(String? imgSrc) => _$this._imgSrc = imgSrc;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ItemAStructBuilder() {
    ItemAStruct._initializeBuilder(this);
  }

  ItemAStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgSrc = $v.imgSrc;
      _title = $v.title;
      _ref = $v.ref;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemAStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemAStruct;
  }

  @override
  void update(void Function(ItemAStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemAStruct build() => _build();

  _$ItemAStruct _build() {
    final _$result = _$v ??
        new _$ItemAStruct._(
            imgSrc: imgSrc,
            title: title,
            ref: ref,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ItemAStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
