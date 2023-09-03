import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/album_dynamic_entity.dart';

AlbumDynamicEntity $AlbumDynamicEntityFromJson(Map<String, dynamic> json) {
  final AlbumDynamicEntity albumDynamicEntity = AlbumDynamicEntity();
  final bool? onSale = jsonConvert.convert<bool>(json['onSale']);
  if (onSale != null) {
    albumDynamicEntity.onSale = onSale;
  }
  final dynamic albumGameInfo = json['albumGameInfo'];
  if (albumGameInfo != null) {
    albumDynamicEntity.albumGameInfo = albumGameInfo;
  }
  final int? commentCount = jsonConvert.convert<int>(json['commentCount']);
  if (commentCount != null) {
    albumDynamicEntity.commentCount = commentCount;
  }
  final int? likedCount = jsonConvert.convert<int>(json['likedCount']);
  if (likedCount != null) {
    albumDynamicEntity.likedCount = likedCount;
  }
  final int? shareCount = jsonConvert.convert<int>(json['shareCount']);
  if (shareCount != null) {
    albumDynamicEntity.shareCount = shareCount;
  }
  final bool? isSub = jsonConvert.convert<bool>(json['isSub']);
  if (isSub != null) {
    albumDynamicEntity.isSub = isSub;
  }
  final int? subTime = jsonConvert.convert<int>(json['subTime']);
  if (subTime != null) {
    albumDynamicEntity.subTime = subTime;
  }
  final int? subCount = jsonConvert.convert<int>(json['subCount']);
  if (subCount != null) {
    albumDynamicEntity.subCount = subCount;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    albumDynamicEntity.code = code;
  }
  return albumDynamicEntity;
}

Map<String, dynamic> $AlbumDynamicEntityToJson(AlbumDynamicEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['onSale'] = entity.onSale;
  data['albumGameInfo'] = entity.albumGameInfo;
  data['commentCount'] = entity.commentCount;
  data['likedCount'] = entity.likedCount;
  data['shareCount'] = entity.shareCount;
  data['isSub'] = entity.isSub;
  data['subTime'] = entity.subTime;
  data['subCount'] = entity.subCount;
  data['code'] = entity.code;
  return data;
}

extension AlbumDynamicEntityExtension on AlbumDynamicEntity {
  AlbumDynamicEntity copyWith({
    bool? onSale,
    dynamic albumGameInfo,
    int? commentCount,
    int? likedCount,
    int? shareCount,
    bool? isSub,
    int? subTime,
    int? subCount,
    int? code,
  }) {
    return AlbumDynamicEntity()
      ..onSale = onSale ?? this.onSale
      ..albumGameInfo = albumGameInfo ?? this.albumGameInfo
      ..commentCount = commentCount ?? this.commentCount
      ..likedCount = likedCount ?? this.likedCount
      ..shareCount = shareCount ?? this.shareCount
      ..isSub = isSub ?? this.isSub
      ..subTime = subTime ?? this.subTime
      ..subCount = subCount ?? this.subCount
      ..code = code ?? this.code;
  }
}