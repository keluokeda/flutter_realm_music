import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/i_user.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/user_playlists_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/user_playlists_entity.g.dart';

@JsonSerializable()
class UserPlaylistsEntity {
  String? version;
  bool? more;
  List<UserPlaylistsPlaylist>? playlist;
  int? code;

  UserPlaylistsEntity();

  factory UserPlaylistsEntity.fromJson(Map<String, dynamic> json) =>
      $UserPlaylistsEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserPlaylistsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class UserPlaylistsPlaylist extends IPlaylist {
  List<dynamic>? subscribers;
  bool? subscribed;
  UserPlaylistsPlaylistCreator? creator;
  dynamic artists;
  dynamic tracks;
  String? updateFrequency;
  int? backgroundCoverId;
  dynamic backgroundCoverUrl;
  int? titleImage;
  String? titleImageUrl;
  String? englishTitle;
  bool? opRecommend;
  dynamic recommendInfo;
  int? subscribedCount;
  int? cloudTrackCount;
  int? userId;
  int? totalDuration;
  int? coverImgId;
  int? privacy;
  int? trackUpdateTime;
  int? trackCount;
  int? updateTime;
  String? commentThreadId;
  String? coverImgUrl;
  int? specialType;
  bool? anonimous;
  int? createTime;
  bool? highQuality;
  bool? newImported;
  int? trackNumberUpdateTime;
  int? playCount;
  int? adType;
  String? description;
  List<String>? tags;
  bool? ordered;
  int? status;
  String? name;
  int? id;
  @JSONField(name: "coverImgId_str")
  String? coverimgidStr;
  dynamic sharedUsers;
  dynamic shareStatus;
  bool? copied;

  UserPlaylistsPlaylist();

  factory UserPlaylistsPlaylist.fromJson(Map<String, dynamic> json) =>
      $UserPlaylistsPlaylistFromJson(json);

  Map<String, dynamic> toJson() => $UserPlaylistsPlaylistToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  IUser get creatorUser => creator!;

  @override
  int get playlistId => id!;

  @override
  String get playlistImage => coverImgUrl!;

  @override
  String get playlistName => name!;
}

@JsonSerializable()
class UserPlaylistsPlaylistCreator extends IUser {
  bool? defaultAvatar;
  int? province;
  int? authStatus;
  bool? followed;
  String? avatarUrl;
  int? accountStatus;
  int? gender;
  int? city;
  int? birthday;
  int? userId;
  int? userType;
  String? nickname;
  String? signature;
  String? description;
  String? detailDescription;
  int? avatarImgId;
  int? backgroundImgId;
  String? backgroundUrl;
  int? authority;
  bool? mutual;
  dynamic expertTags;
  dynamic experts;
  int? djStatus;
  int? vipType;
  dynamic remarkName;
  int? authenticationTypes;
  dynamic avatarDetail;
  String? avatarImgIdStr;
  String? backgroundImgIdStr;
  bool? anchor;
  @JSONField(name: "avatarImgId_str")
  String? avatarimgidStr;

  UserPlaylistsPlaylistCreator();

  factory UserPlaylistsPlaylistCreator.fromJson(Map<String, dynamic> json) =>
      $UserPlaylistsPlaylistCreatorFromJson(json);

  Map<String, dynamic> toJson() => $UserPlaylistsPlaylistCreatorToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get id => userId!;

  @override
  String get userAvatar => avatarUrl!;

  @override
  String get userSignature => signature ?? '';

  @override
  String get username => nickname!;
}
