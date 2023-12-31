import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/artist_album_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';


ArtistAlbumEntity $ArtistAlbumEntityFromJson(Map<String, dynamic> json) {
  final ArtistAlbumEntity artistAlbumEntity = ArtistAlbumEntity();
  final ArtistAlbumArtist? artist = jsonConvert.convert<ArtistAlbumArtist>(
      json['artist']);
  if (artist != null) {
    artistAlbumEntity.artist = artist;
  }
  final List<ArtistAlbumHotAlbums>? hotAlbums = (json['hotAlbums'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<ArtistAlbumHotAlbums>(e) as ArtistAlbumHotAlbums)
      .toList();
  if (hotAlbums != null) {
    artistAlbumEntity.hotAlbums = hotAlbums;
  }
  final bool? more = jsonConvert.convert<bool>(json['more']);
  if (more != null) {
    artistAlbumEntity.more = more;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    artistAlbumEntity.code = code;
  }
  return artistAlbumEntity;
}

Map<String, dynamic> $ArtistAlbumEntityToJson(ArtistAlbumEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['artist'] = entity.artist?.toJson();
  data['hotAlbums'] = entity.hotAlbums?.map((v) => v.toJson()).toList();
  data['more'] = entity.more;
  data['code'] = entity.code;
  return data;
}

extension ArtistAlbumEntityExtension on ArtistAlbumEntity {
  ArtistAlbumEntity copyWith({
    ArtistAlbumArtist? artist,
    List<ArtistAlbumHotAlbums>? hotAlbums,
    bool? more,
    int? code,
  }) {
    return ArtistAlbumEntity()
      ..artist = artist ?? this.artist
      ..hotAlbums = hotAlbums ?? this.hotAlbums
      ..more = more ?? this.more
      ..code = code ?? this.code;
  }
}

ArtistAlbumArtist $ArtistAlbumArtistFromJson(Map<String, dynamic> json) {
  final ArtistAlbumArtist artistAlbumArtist = ArtistAlbumArtist();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    artistAlbumArtist.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    artistAlbumArtist.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    artistAlbumArtist.followed = followed;
  }
  final List<String>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alias != null) {
    artistAlbumArtist.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    artistAlbumArtist.picId = picId;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistAlbumArtist.briefDesc = briefDesc;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    artistAlbumArtist.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    artistAlbumArtist.albumSize = albumSize;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistAlbumArtist.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    artistAlbumArtist.img1v1Url = img1v1Url;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    artistAlbumArtist.trans = trans;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistAlbumArtist.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistAlbumArtist.id = id;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    artistAlbumArtist.picidStr = picidStr;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    artistAlbumArtist.img1v1idStr = img1v1idStr;
  }
  return artistAlbumArtist;
}

Map<String, dynamic> $ArtistAlbumArtistToJson(ArtistAlbumArtist entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['briefDesc'] = entity.briefDesc;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['trans'] = entity.trans;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['picId_str'] = entity.picidStr;
  data['img1v1Id_str'] = entity.img1v1idStr;
  return data;
}

extension ArtistAlbumArtistExtension on ArtistAlbumArtist {
  ArtistAlbumArtist copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    List<String>? alias,
    int? picId,
    String? briefDesc,
    int? musicSize,
    int? albumSize,
    String? picUrl,
    String? img1v1Url,
    String? trans,
    String? name,
    int? id,
    String? picidStr,
    String? img1v1idStr,
  }) {
    return ArtistAlbumArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }
}

ArtistAlbumHotAlbums $ArtistAlbumHotAlbumsFromJson(Map<String, dynamic> json) {
  final ArtistAlbumHotAlbums artistAlbumHotAlbums = ArtistAlbumHotAlbums();
  final List<dynamic>? songs = (json['songs'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (songs != null) {
    artistAlbumHotAlbums.songs = songs;
  }
  final bool? paid = jsonConvert.convert<bool>(json['paid']);
  if (paid != null) {
    artistAlbumHotAlbums.paid = paid;
  }
  final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
  if (onSale != null) {
    artistAlbumHotAlbums.onSale = onSale;
  }
  final int? mark = jsonConvert.convert<int>(json['mark']);
  if (mark != null) {
    artistAlbumHotAlbums.mark = mark;
  }
  final dynamic awardTags = json['awardTags'];
  if (awardTags != null) {
    artistAlbumHotAlbums.awardTags = awardTags;
  }
  final int? companyId = jsonConvert.convert<int>(json['companyId']);
  if (companyId != null) {
    artistAlbumHotAlbums.companyId = companyId;
  }
  final String? blurPicUrl = jsonConvert.convert<String>(json['blurPicUrl']);
  if (blurPicUrl != null) {
    artistAlbumHotAlbums.blurPicUrl = blurPicUrl;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    artistAlbumHotAlbums.alias = alias;
  }
  final List<ArtistAlbumHotAlbumsArtists>? artists = (json['artists'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<ArtistAlbumHotAlbumsArtists>(
          e) as ArtistAlbumHotAlbumsArtists).toList();
  if (artists != null) {
    artistAlbumHotAlbums.artists = artists;
  }
  final int? copyrightId = jsonConvert.convert<int>(json['copyrightId']);
  if (copyrightId != null) {
    artistAlbumHotAlbums.copyrightId = copyrightId;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    artistAlbumHotAlbums.picId = picId;
  }
  final ArtistAlbumHotAlbumsArtist? artist = jsonConvert.convert<
      ArtistAlbumHotAlbumsArtist>(json['artist']);
  if (artist != null) {
    artistAlbumHotAlbums.artist = artist;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistAlbumHotAlbums.briefDesc = briefDesc;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    artistAlbumHotAlbums.publishTime = publishTime;
  }
  final String? company = jsonConvert.convert<String>(json['company']);
  if (company != null) {
    artistAlbumHotAlbums.company = company;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistAlbumHotAlbums.picUrl = picUrl;
  }
  final String? commentThreadId = jsonConvert.convert<String>(
      json['commentThreadId']);
  if (commentThreadId != null) {
    artistAlbumHotAlbums.commentThreadId = commentThreadId;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    artistAlbumHotAlbums.pic = pic;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    artistAlbumHotAlbums.description = description;
  }
  final String? tags = jsonConvert.convert<String>(json['tags']);
  if (tags != null) {
    artistAlbumHotAlbums.tags = tags;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    artistAlbumHotAlbums.status = status;
  }
  final String? subType = jsonConvert.convert<String>(json['subType']);
  if (subType != null) {
    artistAlbumHotAlbums.subType = subType;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistAlbumHotAlbums.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistAlbumHotAlbums.id = id;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    artistAlbumHotAlbums.type = type;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    artistAlbumHotAlbums.size = size;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    artistAlbumHotAlbums.picidStr = picidStr;
  }
  final bool? isSub = jsonConvert.convert<bool>(json['isSub']);
  if (isSub != null) {
    artistAlbumHotAlbums.isSub = isSub;
  }
  return artistAlbumHotAlbums;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsToJson(ArtistAlbumHotAlbums entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['songs'] = entity.songs;
  data['paid'] = entity.paid;
  data['onSale'] = entity.onSale;
  data['mark'] = entity.mark;
  data['awardTags'] = entity.awardTags;
  data['companyId'] = entity.companyId;
  data['blurPicUrl'] = entity.blurPicUrl;
  data['alias'] = entity.alias;
  data['artists'] = entity.artists?.map((v) => v.toJson()).toList();
  data['copyrightId'] = entity.copyrightId;
  data['picId'] = entity.picId;
  data['artist'] = entity.artist?.toJson();
  data['briefDesc'] = entity.briefDesc;
  data['publishTime'] = entity.publishTime;
  data['company'] = entity.company;
  data['picUrl'] = entity.picUrl;
  data['commentThreadId'] = entity.commentThreadId;
  data['pic'] = entity.pic;
  data['description'] = entity.description;
  data['tags'] = entity.tags;
  data['status'] = entity.status;
  data['subType'] = entity.subType;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['type'] = entity.type;
  data['size'] = entity.size;
  data['picId_str'] = entity.picidStr;
  data['isSub'] = entity.isSub;
  return data;
}

extension ArtistAlbumHotAlbumsExtension on ArtistAlbumHotAlbums {
  ArtistAlbumHotAlbums copyWith({
    List<dynamic>? songs,
    bool? paid,
    bool? onSale,
    int? mark,
    dynamic awardTags,
    int? companyId,
    String? blurPicUrl,
    List<dynamic>? alias,
    List<ArtistAlbumHotAlbumsArtists>? artists,
    int? copyrightId,
    int? picId,
    ArtistAlbumHotAlbumsArtist? artist,
    String? briefDesc,
    int? publishTime,
    String? company,
    String? picUrl,
    String? commentThreadId,
    int? pic,
    String? description,
    String? tags,
    int? status,
    String? subType,
    String? name,
    int? id,
    String? type,
    int? size,
    String? picidStr,
    bool? isSub,
  }) {
    return ArtistAlbumHotAlbums()
      ..songs = songs ?? this.songs
      ..paid = paid ?? this.paid
      ..onSale = onSale ?? this.onSale
      ..mark = mark ?? this.mark
      ..awardTags = awardTags ?? this.awardTags
      ..companyId = companyId ?? this.companyId
      ..blurPicUrl = blurPicUrl ?? this.blurPicUrl
      ..alias = alias ?? this.alias
      ..artists = artists ?? this.artists
      ..copyrightId = copyrightId ?? this.copyrightId
      ..picId = picId ?? this.picId
      ..artist = artist ?? this.artist
      ..briefDesc = briefDesc ?? this.briefDesc
      ..publishTime = publishTime ?? this.publishTime
      ..company = company ?? this.company
      ..picUrl = picUrl ?? this.picUrl
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..pic = pic ?? this.pic
      ..description = description ?? this.description
      ..tags = tags ?? this.tags
      ..status = status ?? this.status
      ..subType = subType ?? this.subType
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..type = type ?? this.type
      ..size = size ?? this.size
      ..picidStr = picidStr ?? this.picidStr
      ..isSub = isSub ?? this.isSub;
  }
}

ArtistAlbumHotAlbumsArtists $ArtistAlbumHotAlbumsArtistsFromJson(
    Map<String, dynamic> json) {
  final ArtistAlbumHotAlbumsArtists artistAlbumHotAlbumsArtists = ArtistAlbumHotAlbumsArtists();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    artistAlbumHotAlbumsArtists.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    artistAlbumHotAlbumsArtists.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    artistAlbumHotAlbumsArtists.followed = followed;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    artistAlbumHotAlbumsArtists.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    artistAlbumHotAlbumsArtists.picId = picId;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistAlbumHotAlbumsArtists.briefDesc = briefDesc;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    artistAlbumHotAlbumsArtists.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    artistAlbumHotAlbumsArtists.albumSize = albumSize;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistAlbumHotAlbumsArtists.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    artistAlbumHotAlbumsArtists.img1v1Url = img1v1Url;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    artistAlbumHotAlbumsArtists.trans = trans;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistAlbumHotAlbumsArtists.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistAlbumHotAlbumsArtists.id = id;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    artistAlbumHotAlbumsArtists.img1v1idStr = img1v1idStr;
  }
  return artistAlbumHotAlbumsArtists;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsArtistsToJson(
    ArtistAlbumHotAlbumsArtists entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['briefDesc'] = entity.briefDesc;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['trans'] = entity.trans;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['img1v1Id_str'] = entity.img1v1idStr;
  return data;
}

extension ArtistAlbumHotAlbumsArtistsExtension on ArtistAlbumHotAlbumsArtists {
  ArtistAlbumHotAlbumsArtists copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    List<dynamic>? alias,
    int? picId,
    String? briefDesc,
    int? musicSize,
    int? albumSize,
    String? picUrl,
    String? img1v1Url,
    String? trans,
    String? name,
    int? id,
    String? img1v1idStr,
  }) {
    return ArtistAlbumHotAlbumsArtists()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }
}

ArtistAlbumHotAlbumsArtist $ArtistAlbumHotAlbumsArtistFromJson(
    Map<String, dynamic> json) {
  final ArtistAlbumHotAlbumsArtist artistAlbumHotAlbumsArtist = ArtistAlbumHotAlbumsArtist();
  final int? img1v1Id = jsonConvert.convert<int>(json['img1v1Id']);
  if (img1v1Id != null) {
    artistAlbumHotAlbumsArtist.img1v1Id = img1v1Id;
  }
  final int? topicPerson = jsonConvert.convert<int>(json['topicPerson']);
  if (topicPerson != null) {
    artistAlbumHotAlbumsArtist.topicPerson = topicPerson;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    artistAlbumHotAlbumsArtist.followed = followed;
  }
  final List<String>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alias != null) {
    artistAlbumHotAlbumsArtist.alias = alias;
  }
  final int? picId = jsonConvert.convert<int>(json['picId']);
  if (picId != null) {
    artistAlbumHotAlbumsArtist.picId = picId;
  }
  final String? briefDesc = jsonConvert.convert<String>(json['briefDesc']);
  if (briefDesc != null) {
    artistAlbumHotAlbumsArtist.briefDesc = briefDesc;
  }
  final int? musicSize = jsonConvert.convert<int>(json['musicSize']);
  if (musicSize != null) {
    artistAlbumHotAlbumsArtist.musicSize = musicSize;
  }
  final int? albumSize = jsonConvert.convert<int>(json['albumSize']);
  if (albumSize != null) {
    artistAlbumHotAlbumsArtist.albumSize = albumSize;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    artistAlbumHotAlbumsArtist.picUrl = picUrl;
  }
  final String? img1v1Url = jsonConvert.convert<String>(json['img1v1Url']);
  if (img1v1Url != null) {
    artistAlbumHotAlbumsArtist.img1v1Url = img1v1Url;
  }
  final String? trans = jsonConvert.convert<String>(json['trans']);
  if (trans != null) {
    artistAlbumHotAlbumsArtist.trans = trans;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    artistAlbumHotAlbumsArtist.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    artistAlbumHotAlbumsArtist.id = id;
  }
  final String? picidStr = jsonConvert.convert<String>(json['picId_str']);
  if (picidStr != null) {
    artistAlbumHotAlbumsArtist.picidStr = picidStr;
  }
  final String? img1v1idStr = jsonConvert.convert<String>(json['img1v1Id_str']);
  if (img1v1idStr != null) {
    artistAlbumHotAlbumsArtist.img1v1idStr = img1v1idStr;
  }
  return artistAlbumHotAlbumsArtist;
}

Map<String, dynamic> $ArtistAlbumHotAlbumsArtistToJson(
    ArtistAlbumHotAlbumsArtist entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['img1v1Id'] = entity.img1v1Id;
  data['topicPerson'] = entity.topicPerson;
  data['followed'] = entity.followed;
  data['alias'] = entity.alias;
  data['picId'] = entity.picId;
  data['briefDesc'] = entity.briefDesc;
  data['musicSize'] = entity.musicSize;
  data['albumSize'] = entity.albumSize;
  data['picUrl'] = entity.picUrl;
  data['img1v1Url'] = entity.img1v1Url;
  data['trans'] = entity.trans;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['picId_str'] = entity.picidStr;
  data['img1v1Id_str'] = entity.img1v1idStr;
  return data;
}

extension ArtistAlbumHotAlbumsArtistExtension on ArtistAlbumHotAlbumsArtist {
  ArtistAlbumHotAlbumsArtist copyWith({
    int? img1v1Id,
    int? topicPerson,
    bool? followed,
    List<String>? alias,
    int? picId,
    String? briefDesc,
    int? musicSize,
    int? albumSize,
    String? picUrl,
    String? img1v1Url,
    String? trans,
    String? name,
    int? id,
    String? picidStr,
    String? img1v1idStr,
  }) {
    return ArtistAlbumHotAlbumsArtist()
      ..img1v1Id = img1v1Id ?? this.img1v1Id
      ..topicPerson = topicPerson ?? this.topicPerson
      ..followed = followed ?? this.followed
      ..alias = alias ?? this.alias
      ..picId = picId ?? this.picId
      ..briefDesc = briefDesc ?? this.briefDesc
      ..musicSize = musicSize ?? this.musicSize
      ..albumSize = albumSize ?? this.albumSize
      ..picUrl = picUrl ?? this.picUrl
      ..img1v1Url = img1v1Url ?? this.img1v1Url
      ..trans = trans ?? this.trans
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..picidStr = picidStr ?? this.picidStr
      ..img1v1idStr = img1v1idStr ?? this.img1v1idStr;
  }
}