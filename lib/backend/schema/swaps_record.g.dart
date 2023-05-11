// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swaps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SwapsRecord> _$swapsRecordSerializer = new _$SwapsRecordSerializer();

class _$SwapsRecordSerializer implements StructuredSerializer<SwapsRecord> {
  @override
  final Iterable<Type> types = const [SwapsRecord, _$SwapsRecord];
  @override
  final String wireName = 'SwapsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SwapsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'itemA',
      serializers.serialize(object.itemA,
          specifiedType: const FullType(ItemAStruct)),
      'itemB',
      serializers.serialize(object.itemB,
          specifiedType: const FullType(ItemBStruct)),
    ];
    Object? value;
    value = object.usernameB;
    if (value != null) {
      result
        ..add('usernameB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userImgSrcB;
    if (value != null) {
      result
        ..add('userImgSrcB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userB;
    if (value != null) {
      result
        ..add('userB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeCreation;
    if (value != null) {
      result
        ..add('timeCreation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  SwapsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SwapsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'usernameB':
          result.usernameB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemA':
          result.itemA.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemAStruct))! as ItemAStruct);
          break;
        case 'itemB':
          result.itemB.replace(serializers.deserialize(value,
              specifiedType: const FullType(ItemBStruct))! as ItemBStruct);
          break;
        case 'userImgSrcB':
          result.userImgSrcB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userB':
          result.userB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timeCreation':
          result.timeCreation = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$SwapsRecord extends SwapsRecord {
  @override
  final String? usernameB;
  @override
  final ItemAStruct itemA;
  @override
  final ItemBStruct itemB;
  @override
  final String? userImgSrcB;
  @override
  final String? userB;
  @override
  final DateTime? timeCreation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SwapsRecord([void Function(SwapsRecordBuilder)? updates]) =>
      (new SwapsRecordBuilder()..update(updates))._build();

  _$SwapsRecord._(
      {this.usernameB,
      required this.itemA,
      required this.itemB,
      this.userImgSrcB,
      this.userB,
      this.timeCreation,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(itemA, r'SwapsRecord', 'itemA');
    BuiltValueNullFieldError.checkNotNull(itemB, r'SwapsRecord', 'itemB');
  }

  @override
  SwapsRecord rebuild(void Function(SwapsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwapsRecordBuilder toBuilder() => new SwapsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwapsRecord &&
        usernameB == other.usernameB &&
        itemA == other.itemA &&
        itemB == other.itemB &&
        userImgSrcB == other.userImgSrcB &&
        userB == other.userB &&
        timeCreation == other.timeCreation &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usernameB.hashCode);
    _$hash = $jc(_$hash, itemA.hashCode);
    _$hash = $jc(_$hash, itemB.hashCode);
    _$hash = $jc(_$hash, userImgSrcB.hashCode);
    _$hash = $jc(_$hash, userB.hashCode);
    _$hash = $jc(_$hash, timeCreation.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SwapsRecord')
          ..add('usernameB', usernameB)
          ..add('itemA', itemA)
          ..add('itemB', itemB)
          ..add('userImgSrcB', userImgSrcB)
          ..add('userB', userB)
          ..add('timeCreation', timeCreation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SwapsRecordBuilder implements Builder<SwapsRecord, SwapsRecordBuilder> {
  _$SwapsRecord? _$v;

  String? _usernameB;
  String? get usernameB => _$this._usernameB;
  set usernameB(String? usernameB) => _$this._usernameB = usernameB;

  ItemAStructBuilder? _itemA;
  ItemAStructBuilder get itemA => _$this._itemA ??= new ItemAStructBuilder();
  set itemA(ItemAStructBuilder? itemA) => _$this._itemA = itemA;

  ItemBStructBuilder? _itemB;
  ItemBStructBuilder get itemB => _$this._itemB ??= new ItemBStructBuilder();
  set itemB(ItemBStructBuilder? itemB) => _$this._itemB = itemB;

  String? _userImgSrcB;
  String? get userImgSrcB => _$this._userImgSrcB;
  set userImgSrcB(String? userImgSrcB) => _$this._userImgSrcB = userImgSrcB;

  String? _userB;
  String? get userB => _$this._userB;
  set userB(String? userB) => _$this._userB = userB;

  DateTime? _timeCreation;
  DateTime? get timeCreation => _$this._timeCreation;
  set timeCreation(DateTime? timeCreation) =>
      _$this._timeCreation = timeCreation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SwapsRecordBuilder() {
    SwapsRecord._initializeBuilder(this);
  }

  SwapsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usernameB = $v.usernameB;
      _itemA = $v.itemA.toBuilder();
      _itemB = $v.itemB.toBuilder();
      _userImgSrcB = $v.userImgSrcB;
      _userB = $v.userB;
      _timeCreation = $v.timeCreation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwapsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwapsRecord;
  }

  @override
  void update(void Function(SwapsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwapsRecord build() => _build();

  _$SwapsRecord _build() {
    _$SwapsRecord _$result;
    try {
      _$result = _$v ??
          new _$SwapsRecord._(
              usernameB: usernameB,
              itemA: itemA.build(),
              itemB: itemB.build(),
              userImgSrcB: userImgSrcB,
              userB: userB,
              timeCreation: timeCreation,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'itemA';
        itemA.build();
        _$failedField = 'itemB';
        itemB.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SwapsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
