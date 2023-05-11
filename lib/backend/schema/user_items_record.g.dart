// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserItemsRecord> _$userItemsRecordSerializer =
    new _$UserItemsRecordSerializer();

class _$UserItemsRecordSerializer
    implements StructuredSerializer<UserItemsRecord> {
  @override
  final Iterable<Type> types = const [UserItemsRecord, _$UserItemsRecord];
  @override
  final String wireName = 'UserItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ubication;
    if (value != null) {
      result
        ..add('ubication')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storagePath;
    if (value != null) {
      result
        ..add('storagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userPhoto;
    if (value != null) {
      result
        ..add('userPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
  UserItemsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ubication':
          result.ubication = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'storagePath':
          result.storagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userPhoto':
          result.userPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
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

class _$UserItemsRecord extends UserItemsRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? likes;
  @override
  final LatLng? ubication;
  @override
  final DateTime? createdTime;
  @override
  final String? url;
  @override
  final String? storagePath;
  @override
  final String? userPhoto;
  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserItemsRecord([void Function(UserItemsRecordBuilder)? updates]) =>
      (new UserItemsRecordBuilder()..update(updates))._build();

  _$UserItemsRecord._(
      {this.title,
      this.description,
      this.likes,
      this.ubication,
      this.createdTime,
      this.url,
      this.storagePath,
      this.userPhoto,
      this.username,
      this.displayName,
      this.ffRef})
      : super._();

  @override
  UserItemsRecord rebuild(void Function(UserItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserItemsRecordBuilder toBuilder() =>
      new UserItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserItemsRecord &&
        title == other.title &&
        description == other.description &&
        likes == other.likes &&
        ubication == other.ubication &&
        createdTime == other.createdTime &&
        url == other.url &&
        storagePath == other.storagePath &&
        userPhoto == other.userPhoto &&
        username == other.username &&
        displayName == other.displayName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, ubication.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, storagePath.hashCode);
    _$hash = $jc(_$hash, userPhoto.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserItemsRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('likes', likes)
          ..add('ubication', ubication)
          ..add('createdTime', createdTime)
          ..add('url', url)
          ..add('storagePath', storagePath)
          ..add('userPhoto', userPhoto)
          ..add('username', username)
          ..add('displayName', displayName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserItemsRecordBuilder
    implements Builder<UserItemsRecord, UserItemsRecordBuilder> {
  _$UserItemsRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  LatLng? _ubication;
  LatLng? get ubication => _$this._ubication;
  set ubication(LatLng? ubication) => _$this._ubication = ubication;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _storagePath;
  String? get storagePath => _$this._storagePath;
  set storagePath(String? storagePath) => _$this._storagePath = storagePath;

  String? _userPhoto;
  String? get userPhoto => _$this._userPhoto;
  set userPhoto(String? userPhoto) => _$this._userPhoto = userPhoto;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserItemsRecordBuilder() {
    UserItemsRecord._initializeBuilder(this);
  }

  UserItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _likes = $v.likes;
      _ubication = $v.ubication;
      _createdTime = $v.createdTime;
      _url = $v.url;
      _storagePath = $v.storagePath;
      _userPhoto = $v.userPhoto;
      _username = $v.username;
      _displayName = $v.displayName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserItemsRecord;
  }

  @override
  void update(void Function(UserItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserItemsRecord build() => _build();

  _$UserItemsRecord _build() {
    final _$result = _$v ??
        new _$UserItemsRecord._(
            title: title,
            description: description,
            likes: likes,
            ubication: ubication,
            createdTime: createdTime,
            url: url,
            storagePath: storagePath,
            userPhoto: userPhoto,
            username: username,
            displayName: displayName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
