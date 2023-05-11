// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_b_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemBStruct> _$itemBStructSerializer = new _$ItemBStructSerializer();

class _$ItemBStructSerializer implements StructuredSerializer<ItemBStruct> {
  @override
  final Iterable<Type> types = const [ItemBStruct, _$ItemBStruct];
  @override
  final String wireName = 'ItemBStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemBStruct object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  ItemBStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemBStructBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$ItemBStruct extends ItemBStruct {
  @override
  final String? imgSrc;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ItemBStruct([void Function(ItemBStructBuilder)? updates]) =>
      (new ItemBStructBuilder()..update(updates))._build();

  _$ItemBStruct._(
      {this.imgSrc,
      this.title,
      this.description,
      this.ref,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ItemBStruct', 'firestoreUtilData');
  }

  @override
  ItemBStruct rebuild(void Function(ItemBStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemBStructBuilder toBuilder() => new ItemBStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemBStruct &&
        imgSrc == other.imgSrc &&
        title == other.title &&
        description == other.description &&
        ref == other.ref &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imgSrc.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemBStruct')
          ..add('imgSrc', imgSrc)
          ..add('title', title)
          ..add('description', description)
          ..add('ref', ref)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ItemBStructBuilder implements Builder<ItemBStruct, ItemBStructBuilder> {
  _$ItemBStruct? _$v;

  String? _imgSrc;
  String? get imgSrc => _$this._imgSrc;
  set imgSrc(String? imgSrc) => _$this._imgSrc = imgSrc;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ItemBStructBuilder() {
    ItemBStruct._initializeBuilder(this);
  }

  ItemBStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgSrc = $v.imgSrc;
      _title = $v.title;
      _description = $v.description;
      _ref = $v.ref;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemBStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemBStruct;
  }

  @override
  void update(void Function(ItemBStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemBStruct build() => _build();

  _$ItemBStruct _build() {
    final _$result = _$v ??
        new _$ItemBStruct._(
            imgSrc: imgSrc,
            title: title,
            description: description,
            ref: ref,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ItemBStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
