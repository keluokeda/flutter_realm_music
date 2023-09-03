// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class RecommendSongsObject extends _RecommendSongsObject
    with RealmEntity, RealmObjectBase, RealmObject {
  RecommendSongsObject(
    ObjectId id, {
    Iterable<SongObject> songs = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set<RealmList<SongObject>>(
        this, 'songs', RealmList<SongObject>(songs));
  }

  RecommendSongsObject._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  RealmList<SongObject> get songs =>
      RealmObjectBase.get<SongObject>(this, 'songs') as RealmList<SongObject>;
  @override
  set songs(covariant RealmList<SongObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<RecommendSongsObject>> get changes =>
      RealmObjectBase.getChanges<RecommendSongsObject>(this);

  @override
  RecommendSongsObject freeze() =>
      RealmObjectBase.freezeObject<RecommendSongsObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(RecommendSongsObject._);
    return const SchemaObject(
        ObjectType.realmObject, RecommendSongsObject, 'RecommendSongsObject', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('songs', RealmPropertyType.object,
          linkTarget: 'SongObject', collectionType: RealmCollectionType.list),
    ]);
  }
}

class SongObject extends _SongObject
    with RealmEntity, RealmObjectBase, RealmObject {
  SongObject(
    int id,
    String name,
    int mv, {
    DownloadInfo? downloadInfo,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'mv', mv);
    RealmObjectBase.set(this, 'downloadInfo', downloadInfo);
  }

  SongObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get mv => RealmObjectBase.get<int>(this, 'mv') as int;
  @override
  set mv(int value) => RealmObjectBase.set(this, 'mv', value);

  @override
  DownloadInfo? get downloadInfo =>
      RealmObjectBase.get<DownloadInfo>(this, 'downloadInfo') as DownloadInfo?;
  @override
  set downloadInfo(covariant DownloadInfo? value) =>
      RealmObjectBase.set(this, 'downloadInfo', value);

  @override
  RealmResults<AlbumObject> get albums {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<AlbumObject>(this, 'albums')
        as RealmResults<AlbumObject>;
  }

  @override
  set albums(covariant RealmResults<AlbumObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmResults<ArtistObject> get artists {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<ArtistObject>(this, 'artists')
        as RealmResults<ArtistObject>;
  }

  @override
  set artists(covariant RealmResults<ArtistObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<SongObject>> get changes =>
      RealmObjectBase.getChanges<SongObject>(this);

  @override
  SongObject freeze() => RealmObjectBase.freezeObject<SongObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(SongObject._);
    return const SchemaObject(
        ObjectType.realmObject, SongObject, 'SongObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('mv', RealmPropertyType.int),
      SchemaProperty('downloadInfo', RealmPropertyType.object,
          optional: true, linkTarget: 'DownloadInfo'),
      SchemaProperty('albums', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'songs',
          collectionType: RealmCollectionType.list,
          linkTarget: 'AlbumObject'),
      SchemaProperty('artists', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'songs',
          collectionType: RealmCollectionType.list,
          linkTarget: 'ArtistObject'),
    ]);
  }
}

class DownloadInfo extends _DownloadInfo
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  DownloadInfo(
    int status, {
    String? path,
  }) {
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'path', path);
  }

  DownloadInfo._();

  @override
  int get status => RealmObjectBase.get<int>(this, 'status') as int;
  @override
  set status(int value) => RealmObjectBase.set(this, 'status', value);

  @override
  String? get path => RealmObjectBase.get<String>(this, 'path') as String?;
  @override
  set path(String? value) => RealmObjectBase.set(this, 'path', value);

  @override
  Stream<RealmObjectChanges<DownloadInfo>> get changes =>
      RealmObjectBase.getChanges<DownloadInfo>(this);

  @override
  DownloadInfo freeze() => RealmObjectBase.freezeObject<DownloadInfo>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(DownloadInfo._);
    return const SchemaObject(
        ObjectType.embeddedObject, DownloadInfo, 'DownloadInfo', [
      SchemaProperty('status', RealmPropertyType.int),
      SchemaProperty('path', RealmPropertyType.string, optional: true),
    ]);
  }
}

class ArtistObject extends _ArtistObject
    with RealmEntity, RealmObjectBase, RealmObject {
  ArtistObject(
    int id,
    String name, {
    String? avatar,
    Iterable<SongObject> songs = const [],
    Iterable<ArtistDescObject> descList = const [],
    Iterable<AlbumObject> albums = const [],
    Iterable<MvObject> mvs = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'avatar', avatar);
    RealmObjectBase.set<RealmList<SongObject>>(
        this, 'songs', RealmList<SongObject>(songs));
    RealmObjectBase.set<RealmList<ArtistDescObject>>(
        this, 'descList', RealmList<ArtistDescObject>(descList));
    RealmObjectBase.set<RealmList<AlbumObject>>(
        this, 'albums', RealmList<AlbumObject>(albums));
    RealmObjectBase.set<RealmList<MvObject>>(
        this, 'mvs', RealmList<MvObject>(mvs));
  }

  ArtistObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get avatar => RealmObjectBase.get<String>(this, 'avatar') as String?;
  @override
  set avatar(String? value) => RealmObjectBase.set(this, 'avatar', value);

  @override
  RealmList<SongObject> get songs =>
      RealmObjectBase.get<SongObject>(this, 'songs') as RealmList<SongObject>;
  @override
  set songs(covariant RealmList<SongObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<ArtistDescObject> get descList =>
      RealmObjectBase.get<ArtistDescObject>(this, 'descList')
          as RealmList<ArtistDescObject>;
  @override
  set descList(covariant RealmList<ArtistDescObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<AlbumObject> get albums =>
      RealmObjectBase.get<AlbumObject>(this, 'albums')
          as RealmList<AlbumObject>;
  @override
  set albums(covariant RealmList<AlbumObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<MvObject> get mvs =>
      RealmObjectBase.get<MvObject>(this, 'mvs') as RealmList<MvObject>;
  @override
  set mvs(covariant RealmList<MvObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<ArtistObject>> get changes =>
      RealmObjectBase.getChanges<ArtistObject>(this);

  @override
  ArtistObject freeze() => RealmObjectBase.freezeObject<ArtistObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ArtistObject._);
    return const SchemaObject(
        ObjectType.realmObject, ArtistObject, 'ArtistObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('avatar', RealmPropertyType.string, optional: true),
      SchemaProperty('songs', RealmPropertyType.object,
          linkTarget: 'SongObject', collectionType: RealmCollectionType.list),
      SchemaProperty('descList', RealmPropertyType.object,
          linkTarget: 'ArtistDescObject',
          collectionType: RealmCollectionType.list),
      SchemaProperty('albums', RealmPropertyType.object,
          linkTarget: 'AlbumObject', collectionType: RealmCollectionType.list),
      SchemaProperty('mvs', RealmPropertyType.object,
          linkTarget: 'MvObject', collectionType: RealmCollectionType.list),
    ]);
  }
}

class ArtistDescObject extends _ArtistDescObject
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ArtistDescObject(
    String title,
    String text,
  ) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'text', text);
  }

  ArtistDescObject._();

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get text => RealmObjectBase.get<String>(this, 'text') as String;
  @override
  set text(String value) => RealmObjectBase.set(this, 'text', value);

  @override
  Stream<RealmObjectChanges<ArtistDescObject>> get changes =>
      RealmObjectBase.getChanges<ArtistDescObject>(this);

  @override
  ArtistDescObject freeze() =>
      RealmObjectBase.freezeObject<ArtistDescObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ArtistDescObject._);
    return const SchemaObject(
        ObjectType.embeddedObject, ArtistDescObject, 'ArtistDescObject', [
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('text', RealmPropertyType.string),
    ]);
  }
}

class MvObject extends _MvObject
    with RealmEntity, RealmObjectBase, RealmObject {
  MvObject(
    int id,
    String name,
    String image,
    int playCount,
    String duration,
    String artistName,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'playCount', playCount);
    RealmObjectBase.set(this, 'duration', duration);
    RealmObjectBase.set(this, 'artistName', artistName);
  }

  MvObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get image => RealmObjectBase.get<String>(this, 'image') as String;
  @override
  set image(String value) => RealmObjectBase.set(this, 'image', value);

  @override
  int get playCount => RealmObjectBase.get<int>(this, 'playCount') as int;
  @override
  set playCount(int value) => RealmObjectBase.set(this, 'playCount', value);

  @override
  String get duration =>
      RealmObjectBase.get<String>(this, 'duration') as String;
  @override
  set duration(String value) => RealmObjectBase.set(this, 'duration', value);

  @override
  String get artistName =>
      RealmObjectBase.get<String>(this, 'artistName') as String;
  @override
  set artistName(String value) =>
      RealmObjectBase.set(this, 'artistName', value);

  @override
  Stream<RealmObjectChanges<MvObject>> get changes =>
      RealmObjectBase.getChanges<MvObject>(this);

  @override
  MvObject freeze() => RealmObjectBase.freezeObject<MvObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MvObject._);
    return const SchemaObject(ObjectType.realmObject, MvObject, 'MvObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('image', RealmPropertyType.string),
      SchemaProperty('playCount', RealmPropertyType.int),
      SchemaProperty('duration', RealmPropertyType.string),
      SchemaProperty('artistName', RealmPropertyType.string),
    ]);
  }
}

class AlbumObject extends _AlbumObject
    with RealmEntity, RealmObjectBase, RealmObject {
  AlbumObject(
    int id,
    String name,
    String image, {
    String? description,
    Iterable<SongObject> songs = const [],
    Iterable<UserObject> subscribers = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set<RealmList<SongObject>>(
        this, 'songs', RealmList<SongObject>(songs));
    RealmObjectBase.set<RealmList<UserObject>>(
        this, 'subscribers', RealmList<UserObject>(subscribers));
  }

  AlbumObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get image => RealmObjectBase.get<String>(this, 'image') as String;
  @override
  set image(String value) => RealmObjectBase.set(this, 'image', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  RealmList<SongObject> get songs =>
      RealmObjectBase.get<SongObject>(this, 'songs') as RealmList<SongObject>;
  @override
  set songs(covariant RealmList<SongObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<UserObject> get subscribers =>
      RealmObjectBase.get<UserObject>(this, 'subscribers')
          as RealmList<UserObject>;
  @override
  set subscribers(covariant RealmList<UserObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<AlbumObject>> get changes =>
      RealmObjectBase.getChanges<AlbumObject>(this);

  @override
  AlbumObject freeze() => RealmObjectBase.freezeObject<AlbumObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(AlbumObject._);
    return const SchemaObject(
        ObjectType.realmObject, AlbumObject, 'AlbumObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('image', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('songs', RealmPropertyType.object,
          linkTarget: 'SongObject', collectionType: RealmCollectionType.list),
      SchemaProperty('subscribers', RealmPropertyType.object,
          linkTarget: 'UserObject', collectionType: RealmCollectionType.list),
    ]);
  }
}

class UserObject extends _UserObject
    with RealmEntity, RealmObjectBase, RealmObject {
  UserObject(
    int id,
    String name,
    String avatar,
    String signature, {
    Iterable<PlaylistObject> playlists = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'avatar', avatar);
    RealmObjectBase.set(this, 'signature', signature);
    RealmObjectBase.set<RealmList<PlaylistObject>>(
        this, 'playlists', RealmList<PlaylistObject>(playlists));
  }

  UserObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get avatar => RealmObjectBase.get<String>(this, 'avatar') as String;
  @override
  set avatar(String value) => RealmObjectBase.set(this, 'avatar', value);

  @override
  String get signature =>
      RealmObjectBase.get<String>(this, 'signature') as String;
  @override
  set signature(String value) => RealmObjectBase.set(this, 'signature', value);

  @override
  RealmList<PlaylistObject> get playlists =>
      RealmObjectBase.get<PlaylistObject>(this, 'playlists')
          as RealmList<PlaylistObject>;
  @override
  set playlists(covariant RealmList<PlaylistObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<UserObject>> get changes =>
      RealmObjectBase.getChanges<UserObject>(this);

  @override
  UserObject freeze() => RealmObjectBase.freezeObject<UserObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserObject._);
    return const SchemaObject(
        ObjectType.realmObject, UserObject, 'UserObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('avatar', RealmPropertyType.string),
      SchemaProperty('signature', RealmPropertyType.string),
      SchemaProperty('playlists', RealmPropertyType.object,
          linkTarget: 'PlaylistObject',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class PlaylistObject extends _PlaylistObject
    with RealmEntity, RealmObjectBase, RealmObject {
  PlaylistObject(
    int id,
    String name,
    String image, {
    UserObject? creator,
    Iterable<SongObject> songs = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'image', image);
    RealmObjectBase.set(this, 'creator', creator);
    RealmObjectBase.set<RealmList<SongObject>>(
        this, 'songs', RealmList<SongObject>(songs));
  }

  PlaylistObject._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get image => RealmObjectBase.get<String>(this, 'image') as String;
  @override
  set image(String value) => RealmObjectBase.set(this, 'image', value);

  @override
  UserObject? get creator =>
      RealmObjectBase.get<UserObject>(this, 'creator') as UserObject?;
  @override
  set creator(covariant UserObject? value) =>
      RealmObjectBase.set(this, 'creator', value);

  @override
  RealmList<SongObject> get songs =>
      RealmObjectBase.get<SongObject>(this, 'songs') as RealmList<SongObject>;
  @override
  set songs(covariant RealmList<SongObject> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<PlaylistObject>> get changes =>
      RealmObjectBase.getChanges<PlaylistObject>(this);

  @override
  PlaylistObject freeze() => RealmObjectBase.freezeObject<PlaylistObject>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PlaylistObject._);
    return const SchemaObject(
        ObjectType.realmObject, PlaylistObject, 'PlaylistObject', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('image', RealmPropertyType.string),
      SchemaProperty('creator', RealmPropertyType.object,
          optional: true, linkTarget: 'UserObject'),
      SchemaProperty('songs', RealmPropertyType.object,
          linkTarget: 'SongObject', collectionType: RealmCollectionType.list),
    ]);
  }
}
