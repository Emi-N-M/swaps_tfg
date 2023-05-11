// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'possible_swaps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PossibleSwapsRecord> _$possibleSwapsRecordSerializer =
    new _$PossibleSwapsRecordSerializer();

class _$PossibleSwapsRecordSerializer
    implements StructuredSerializer<PossibleSwapsRecord> {
  @override
  final Iterable<Type> types = const [
    PossibleSwapsRecord,
    _$PossibleSwapsRecord
  ];
  @override
  final String wireName = 'PossibleSwapsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PossibleSwapsRecord object,
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
    value = object.haveIVoted;
    if (value != null) {
      result
        ..add('haveIVoted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  PossibleSwapsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PossibleSwapsRecordBuilder();

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
        case 'haveIVoted':
          result.haveIVoted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$PossibleSwapsRecord extends PossibleSwapsRecord {
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
  final bool? haveIVoted;
  @override
  final DateTime? timeCreation;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PossibleSwapsRecord(
          [void Function(PossibleSwapsRecordBuilder)? updates]) =>
      (new PossibleSwapsRecordBuilder()..update(updates))._build();

  _$PossibleSwapsRecord._(
      {this.usernameB,
      required this.itemA,
      required this.itemB,
      this.userImgSrcB,
      this.userB,
      this.haveIVoted,
      this.timeCreation,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        itemA, r'PossibleSwapsRecord', 'itemA');
    BuiltValueNullFieldError.checkNotNull(
        itemB, r'PossibleSwapsRecord', 'itemB');
  }

  @override
  PossibleSwapsRecord rebuild(
          void Function(PossibleSwapsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PossibleSwapsRecordBuilder toBuilder() =>
      new PossibleSwapsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PossibleSwapsRecord &&
        usernameB == other.usernameB &&
        itemA == other.itemA &&
        itemB == other.itemB &&
        userImgSrcB == other.userImgSrcB &&
        userB == other.userB &&
        haveIVoted == other.haveIVoted &&
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
    _$hash = $jc(_$hash, haveIVoted.hashCode);
    _$hash = $jc(_$hash, timeCreation.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PossibleSwapsRecord')
          ..add('usernameB', usernameB)
          ..add('itemA', itemA)
          ..add('itemB', itemB)
          ..add('userImgSrcB', userImgSrcB)
          ..add('userB', userB)
          ..add('haveIVoted', haveIVoted)
          ..add('timeCreation', timeCreation)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PossibleSwapsRecordBuilder
    implements Builder<PossibleSwapsRecord, PossibleSwapsRecordBuilder> {
  _$PossibleSwapsRecord? _$v;

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

  bool? _haveIVoted;
  bool? get haveIVoted => _$this._haveIVoted;
  set haveIVoted(bool? haveIVoted) => _$this._haveIVoted = haveIVoted;

  DateTime? _timeCreation;
  DateTime? get timeCreation => _$this._timeCreation;
  set timeCreation(DateTime? timeCreation) =>
      _$this._timeCreation = timeCreation;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PossibleSwapsRecordBuilder() {
    PossibleSwapsRecord._initializeBuilder(this);
  }

  PossibleSwapsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usernameB = $v.usernameB;
      _itemA = $v.itemA.toBuilder();
      _itemB = $v.itemB.toBuilder();
      _userImgSrcB = $v.userImgSrcB;
      _userB = $v.userB;
      _haveIVoted = $v.haveIVoted;
      _timeCreation = $v.timeCreation;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PossibleSwapsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PossibleSwapsRecord;
  }

  @override
  void update(void Function(PossibleSwapsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PossibleSwapsRecord build() => _build();

  _$PossibleSwapsRecord _build() {
    _$PossibleSwapsRecord _$result;
    try {
      _$result = _$v ??
          new _$PossibleSwapsRecord._(
              usernameB: usernameB,
              itemA: itemA.build(),
              itemB: itemB.build(),
              userImgSrcB: userImgSrcB,
              userB: userB,
              haveIVoted: haveIVoted,
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
            r'PossibleSwapsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
