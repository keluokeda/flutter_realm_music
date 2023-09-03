import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/user_playlists_entity.dart';
import 'package:flutter_realm_music/entity/i_playlist.dart';

import 'package:flutter_realm_music/entity/i_user.dart';


UserPlaylistsEntity $UserPlaylistsEntityFromJson(Map<String, dynamic> json) {
  final UserPlaylistsEntity userPlaylistsEntity = UserPlaylistsEntity();
  final String? version = jsonConvert.convert<String>(json['version']);
  if (version != null) {
    userPlaylistsEntity.version = version;
  }
  final bool? more = jsonConvert.convert<bool>(json['more']);
  if (more != null) {
    userPlaylistsEntity.more = more;
  }
  final List<UserPlaylistsPlaylist>? playlist = (json['playlist'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<UserPlaylistsPlaylist>(e) as UserPlaylistsPlaylist)
      .toList();
  if (playlist != null) {
    userPlaylistsEntity.playlist = playlist;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    userPlaylistsEntity.code = code;
  }
  return userPlaylistsEntity;
}

Map<String, dynamic> $UserPlaylistsEntityToJson(UserPlaylistsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['version'] = entity.version;
  data['more'] = entity.more;
  data['playlist'] = entity.playlist?.map((v) => v.toJson()).toList();
  data['code'] = entity.code;
  return data;
}

extension UserPlaylistsEntityExtension on UserPlaylistsEntity {
  UserPlaylistsEntity copyWith({
    String? version,
    bool? more,
    List<UserPlaylistsPlaylist>? playlist,
    int? code,
  }) {
    return UserPlaylistsEntity()
      ..version = version ?? this.version
      ..more = more ?? this.more
      ..playlist = playlist ?? this.playlist
      ..code = code ?? this.code;
  }
}

UserPlaylistsPlaylist $UserPlaylistsPlaylistFromJson(
    Map<String, dynamic> json) {
  final UserPlaylistsPlaylist userPlaylistsPlaylist = UserPlaylistsPlaylist();
  final List<dynamic>? subscribers = (json['subscribers'] as List<dynamic>?)
      ?.map(
          (e) => e)
      .toList();
  if (subscribers != null) {
    userPlaylistsPlaylist.subscribers = subscribers;
  }
  final bool? subscribed = jsonConvert.convert<bool>(json['subscribed']);
  if (subscribed != null) {
    userPlaylistsPlaylist.subscribed = subscribed;
  }
  final UserPlaylistsPlaylistCreator? creator = jsonConvert.convert<
      UserPlaylistsPlaylistCreator>(json['creator']);
  if (creator != null) {
    userPlaylistsPlaylist.creator = creator;
  }
  final dynamic artists = json['artists'];
  if (artists != null) {
    userPlaylistsPlaylist.artists = artists;
  }
  final dynamic tracks = json['tracks'];
  if (tracks != null) {
    userPlaylistsPlaylist.tracks = tracks;
  }
  final String? updateFrequency = jsonConvert.convert<String>(
      json['updateFrequency']);
  if (updateFrequency != null) {
    userPlaylistsPlaylist.updateFrequency = updateFrequency;
  }
  final int? backgroundCoverId = jsonConvert.convert<int>(
      json['backgroundCoverId']);
  if (backgroundCoverId != null) {
    userPlaylistsPlaylist.backgroundCoverId = backgroundCoverId;
  }
  final dynamic backgroundCoverUrl = json['backgroundCoverUrl'];
  if (backgroundCoverUrl != null) {
    userPlaylistsPlaylist.backgroundCoverUrl = backgroundCoverUrl;
  }
  final int? titleImage = jsonConvert.convert<int>(json['titleImage']);
  if (titleImage != null) {
    userPlaylistsPlaylist.titleImage = titleImage;
  }
  final String? titleImageUrl = jsonConvert.convert<String>(
      json['titleImageUrl']);
  if (titleImageUrl != null) {
    userPlaylistsPlaylist.titleImageUrl = titleImageUrl;
  }
  final String? englishTitle = jsonConvert.convert<String>(
      json['englishTitle']);
  if (englishTitle != null) {
    userPlaylistsPlaylist.englishTitle = englishTitle;
  }
  final bool? opRecommend = jsonConvert.convert<bool>(json['opRecommend']);
  if (opRecommend != null) {
    userPlaylistsPlaylist.opRecommend = opRecommend;
  }
  final dynamic recommendInfo = json['recommendInfo'];
  if (recommendInfo != null) {
    userPlaylistsPlaylist.recommendInfo = recommendInfo;
  }
  final int? subscribedCount = jsonConvert.convert<int>(
      json['subscribedCount']);
  if (subscribedCount != null) {
    userPlaylistsPlaylist.subscribedCount = subscribedCount;
  }
  final int? cloudTrackCount = jsonConvert.convert<int>(
      json['cloudTrackCount']);
  if (cloudTrackCount != null) {
    userPlaylistsPlaylist.cloudTrackCount = cloudTrackCount;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    userPlaylistsPlaylist.userId = userId;
  }
  final int? totalDuration = jsonConvert.convert<int>(json['totalDuration']);
  if (totalDuration != null) {
    userPlaylistsPlaylist.totalDuration = totalDuration;
  }
  final int? coverImgId = jsonConvert.convert<int>(json['coverImgId']);
  if (coverImgId != null) {
    userPlaylistsPlaylist.coverImgId = coverImgId;
  }
  final int? privacy = jsonConvert.convert<int>(json['privacy']);
  if (privacy != null) {
    userPlaylistsPlaylist.privacy = privacy;
  }
  final int? trackUpdateTime = jsonConvert.convert<int>(
      json['trackUpdateTime']);
  if (trackUpdateTime != null) {
    userPlaylistsPlaylist.trackUpdateTime = trackUpdateTime;
  }
  final int? trackCount = jsonConvert.convert<int>(json['trackCount']);
  if (trackCount != null) {
    userPlaylistsPlaylist.trackCount = trackCount;
  }
  final int? updateTime = jsonConvert.convert<int>(json['updateTime']);
  if (updateTime != null) {
    userPlaylistsPlaylist.updateTime = updateTime;
  }
  final String? commentThreadId = jsonConvert.convert<String>(
      json['commentThreadId']);
  if (commentThreadId != null) {
    userPlaylistsPlaylist.commentThreadId = commentThreadId;
  }
  final String? coverImgUrl = jsonConvert.convert<String>(json['coverImgUrl']);
  if (coverImgUrl != null) {
    userPlaylistsPlaylist.coverImgUrl = coverImgUrl;
  }
  final int? specialType = jsonConvert.convert<int>(json['specialType']);
  if (specialType != null) {
    userPlaylistsPlaylist.specialType = specialType;
  }
  final bool? anonimous = jsonConvert.convert<bool>(json['anonimous']);
  if (anonimous != null) {
    userPlaylistsPlaylist.anonimous = anonimous;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    userPlaylistsPlaylist.createTime = createTime;
  }
  final bool? highQuality = jsonConvert.convert<bool>(json['highQuality']);
  if (highQuality != null) {
    userPlaylistsPlaylist.highQuality = highQuality;
  }
  final bool? newImported = jsonConvert.convert<bool>(json['newImported']);
  if (newImported != null) {
    userPlaylistsPlaylist.newImported = newImported;
  }
  final int? trackNumberUpdateTime = jsonConvert.convert<int>(
      json['trackNumberUpdateTime']);
  if (trackNumberUpdateTime != null) {
    userPlaylistsPlaylist.trackNumberUpdateTime = trackNumberUpdateTime;
  }
  final int? playCount = jsonConvert.convert<int>(json['playCount']);
  if (playCount != null) {
    userPlaylistsPlaylist.playCount = playCount;
  }
  final int? adType = jsonConvert.convert<int>(json['adType']);
  if (adType != null) {
    userPlaylistsPlaylist.adType = adType;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    userPlaylistsPlaylist.description = description;
  }
  final List<String>? tags = (json['tags'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tags != null) {
    userPlaylistsPlaylist.tags = tags;
  }
  final bool? ordered = jsonConvert.convert<bool>(json['ordered']);
  if (ordered != null) {
    userPlaylistsPlaylist.ordered = ordered;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    userPlaylistsPlaylist.status = status;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userPlaylistsPlaylist.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userPlaylistsPlaylist.id = id;
  }
  final String? coverimgidStr = jsonConvert.convert<String>(
      json['coverImgId_str']);
  if (coverimgidStr != null) {
    userPlaylistsPlaylist.coverimgidStr = coverimgidStr;
  }
  final dynamic sharedUsers = json['sharedUsers'];
  if (sharedUsers != null) {
    userPlaylistsPlaylist.sharedUsers = sharedUsers;
  }
  final dynamic shareStatus = json['shareStatus'];
  if (shareStatus != null) {
    userPlaylistsPlaylist.shareStatus = shareStatus;
  }
  final bool? copied = jsonConvert.convert<bool>(json['copied']);
  if (copied != null) {
    userPlaylistsPlaylist.copied = copied;
  }
  return userPlaylistsPlaylist;
}

Map<String, dynamic> $UserPlaylistsPlaylistToJson(
    UserPlaylistsPlaylist entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['subscribers'] = entity.subscribers;
  data['subscribed'] = entity.subscribed;
  data['creator'] = entity.creator?.toJson();
  data['artists'] = entity.artists;
  data['tracks'] = entity.tracks;
  data['updateFrequency'] = entity.updateFrequency;
  data['backgroundCoverId'] = entity.backgroundCoverId;
  data['backgroundCoverUrl'] = entity.backgroundCoverUrl;
  data['titleImage'] = entity.titleImage;
  data['titleImageUrl'] = entity.titleImageUrl;
  data['englishTitle'] = entity.englishTitle;
  data['opRecommend'] = entity.opRecommend;
  data['recommendInfo'] = entity.recommendInfo;
  data['subscribedCount'] = entity.subscribedCount;
  data['cloudTrackCount'] = entity.cloudTrackCount;
  data['userId'] = entity.userId;
  data['totalDuration'] = entity.totalDuration;
  data['coverImgId'] = entity.coverImgId;
  data['privacy'] = entity.privacy;
  data['trackUpdateTime'] = entity.trackUpdateTime;
  data['trackCount'] = entity.trackCount;
  data['updateTime'] = entity.updateTime;
  data['commentThreadId'] = entity.commentThreadId;
  data['coverImgUrl'] = entity.coverImgUrl;
  data['specialType'] = entity.specialType;
  data['anonimous'] = entity.anonimous;
  data['createTime'] = entity.createTime;
  data['highQuality'] = entity.highQuality;
  data['newImported'] = entity.newImported;
  data['trackNumberUpdateTime'] = entity.trackNumberUpdateTime;
  data['playCount'] = entity.playCount;
  data['adType'] = entity.adType;
  data['description'] = entity.description;
  data['tags'] = entity.tags;
  data['ordered'] = entity.ordered;
  data['status'] = entity.status;
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['coverImgId_str'] = entity.coverimgidStr;
  data['sharedUsers'] = entity.sharedUsers;
  data['shareStatus'] = entity.shareStatus;
  data['copied'] = entity.copied;
  return data;
}

extension UserPlaylistsPlaylistExtension on UserPlaylistsPlaylist {
  UserPlaylistsPlaylist copyWith({
    List<dynamic>? subscribers,
    bool? subscribed,
    UserPlaylistsPlaylistCreator? creator,
    dynamic artists,
    dynamic tracks,
    String? updateFrequency,
    int? backgroundCoverId,
    dynamic backgroundCoverUrl,
    int? titleImage,
    String? titleImageUrl,
    String? englishTitle,
    bool? opRecommend,
    dynamic recommendInfo,
    int? subscribedCount,
    int? cloudTrackCount,
    int? userId,
    int? totalDuration,
    int? coverImgId,
    int? privacy,
    int? trackUpdateTime,
    int? trackCount,
    int? updateTime,
    String? commentThreadId,
    String? coverImgUrl,
    int? specialType,
    bool? anonimous,
    int? createTime,
    bool? highQuality,
    bool? newImported,
    int? trackNumberUpdateTime,
    int? playCount,
    int? adType,
    String? description,
    List<String>? tags,
    bool? ordered,
    int? status,
    String? name,
    int? id,
    String? coverimgidStr,
    dynamic sharedUsers,
    dynamic shareStatus,
    bool? copied,
  }) {
    return UserPlaylistsPlaylist()
      ..subscribers = subscribers ?? this.subscribers
      ..subscribed = subscribed ?? this.subscribed
      ..creator = creator ?? this.creator
      ..artists = artists ?? this.artists
      ..tracks = tracks ?? this.tracks
      ..updateFrequency = updateFrequency ?? this.updateFrequency
      ..backgroundCoverId = backgroundCoverId ?? this.backgroundCoverId
      ..backgroundCoverUrl = backgroundCoverUrl ?? this.backgroundCoverUrl
      ..titleImage = titleImage ?? this.titleImage
      ..titleImageUrl = titleImageUrl ?? this.titleImageUrl
      ..englishTitle = englishTitle ?? this.englishTitle
      ..opRecommend = opRecommend ?? this.opRecommend
      ..recommendInfo = recommendInfo ?? this.recommendInfo
      ..subscribedCount = subscribedCount ?? this.subscribedCount
      ..cloudTrackCount = cloudTrackCount ?? this.cloudTrackCount
      ..userId = userId ?? this.userId
      ..totalDuration = totalDuration ?? this.totalDuration
      ..coverImgId = coverImgId ?? this.coverImgId
      ..privacy = privacy ?? this.privacy
      ..trackUpdateTime = trackUpdateTime ?? this.trackUpdateTime
      ..trackCount = trackCount ?? this.trackCount
      ..updateTime = updateTime ?? this.updateTime
      ..commentThreadId = commentThreadId ?? this.commentThreadId
      ..coverImgUrl = coverImgUrl ?? this.coverImgUrl
      ..specialType = specialType ?? this.specialType
      ..anonimous = anonimous ?? this.anonimous
      ..createTime = createTime ?? this.createTime
      ..highQuality = highQuality ?? this.highQuality
      ..newImported = newImported ?? this.newImported
      ..trackNumberUpdateTime = trackNumberUpdateTime ??
          this.trackNumberUpdateTime
      ..playCount = playCount ?? this.playCount
      ..adType = adType ?? this.adType
      ..description = description ?? this.description
      ..tags = tags ?? this.tags
      ..ordered = ordered ?? this.ordered
      ..status = status ?? this.status
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..coverimgidStr = coverimgidStr ?? this.coverimgidStr
      ..sharedUsers = sharedUsers ?? this.sharedUsers
      ..shareStatus = shareStatus ?? this.shareStatus
      ..copied = copied ?? this.copied;
  }
}

UserPlaylistsPlaylistCreator $UserPlaylistsPlaylistCreatorFromJson(
    Map<String, dynamic> json) {
  final UserPlaylistsPlaylistCreator userPlaylistsPlaylistCreator = UserPlaylistsPlaylistCreator();
  final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
  if (defaultAvatar != null) {
    userPlaylistsPlaylistCreator.defaultAvatar = defaultAvatar;
  }
  final int? province = jsonConvert.convert<int>(json['province']);
  if (province != null) {
    userPlaylistsPlaylistCreator.province = province;
  }
  final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
  if (authStatus != null) {
    userPlaylistsPlaylistCreator.authStatus = authStatus;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    userPlaylistsPlaylistCreator.followed = followed;
  }
  final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
  if (avatarUrl != null) {
    userPlaylistsPlaylistCreator.avatarUrl = avatarUrl;
  }
  final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
  if (accountStatus != null) {
    userPlaylistsPlaylistCreator.accountStatus = accountStatus;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    userPlaylistsPlaylistCreator.gender = gender;
  }
  final int? city = jsonConvert.convert<int>(json['city']);
  if (city != null) {
    userPlaylistsPlaylistCreator.city = city;
  }
  final int? birthday = jsonConvert.convert<int>(json['birthday']);
  if (birthday != null) {
    userPlaylistsPlaylistCreator.birthday = birthday;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    userPlaylistsPlaylistCreator.userId = userId;
  }
  final int? userType = jsonConvert.convert<int>(json['userType']);
  if (userType != null) {
    userPlaylistsPlaylistCreator.userType = userType;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    userPlaylistsPlaylistCreator.nickname = nickname;
  }
  final String? signature = jsonConvert.convert<String>(json['signature']);
  if (signature != null) {
    userPlaylistsPlaylistCreator.signature = signature;
  }
  final String? description = jsonConvert.convert<String>(json['description']);
  if (description != null) {
    userPlaylistsPlaylistCreator.description = description;
  }
  final String? detailDescription = jsonConvert.convert<String>(
      json['detailDescription']);
  if (detailDescription != null) {
    userPlaylistsPlaylistCreator.detailDescription = detailDescription;
  }
  final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
  if (avatarImgId != null) {
    userPlaylistsPlaylistCreator.avatarImgId = avatarImgId;
  }
  final int? backgroundImgId = jsonConvert.convert<int>(
      json['backgroundImgId']);
  if (backgroundImgId != null) {
    userPlaylistsPlaylistCreator.backgroundImgId = backgroundImgId;
  }
  final String? backgroundUrl = jsonConvert.convert<String>(
      json['backgroundUrl']);
  if (backgroundUrl != null) {
    userPlaylistsPlaylistCreator.backgroundUrl = backgroundUrl;
  }
  final int? authority = jsonConvert.convert<int>(json['authority']);
  if (authority != null) {
    userPlaylistsPlaylistCreator.authority = authority;
  }
  final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
  if (mutual != null) {
    userPlaylistsPlaylistCreator.mutual = mutual;
  }
  final dynamic expertTags = json['expertTags'];
  if (expertTags != null) {
    userPlaylistsPlaylistCreator.expertTags = expertTags;
  }
  final dynamic experts = json['experts'];
  if (experts != null) {
    userPlaylistsPlaylistCreator.experts = experts;
  }
  final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
  if (djStatus != null) {
    userPlaylistsPlaylistCreator.djStatus = djStatus;
  }
  final int? vipType = jsonConvert.convert<int>(json['vipType']);
  if (vipType != null) {
    userPlaylistsPlaylistCreator.vipType = vipType;
  }
  final dynamic remarkName = json['remarkName'];
  if (remarkName != null) {
    userPlaylistsPlaylistCreator.remarkName = remarkName;
  }
  final int? authenticationTypes = jsonConvert.convert<int>(
      json['authenticationTypes']);
  if (authenticationTypes != null) {
    userPlaylistsPlaylistCreator.authenticationTypes = authenticationTypes;
  }
  final dynamic avatarDetail = json['avatarDetail'];
  if (avatarDetail != null) {
    userPlaylistsPlaylistCreator.avatarDetail = avatarDetail;
  }
  final String? avatarImgIdStr = jsonConvert.convert<String>(
      json['avatarImgIdStr']);
  if (avatarImgIdStr != null) {
    userPlaylistsPlaylistCreator.avatarImgIdStr = avatarImgIdStr;
  }
  final String? backgroundImgIdStr = jsonConvert.convert<String>(
      json['backgroundImgIdStr']);
  if (backgroundImgIdStr != null) {
    userPlaylistsPlaylistCreator.backgroundImgIdStr = backgroundImgIdStr;
  }
  final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
  if (anchor != null) {
    userPlaylistsPlaylistCreator.anchor = anchor;
  }
  final String? avatarimgidStr = jsonConvert.convert<String>(
      json['avatarImgId_str']);
  if (avatarimgidStr != null) {
    userPlaylistsPlaylistCreator.avatarimgidStr = avatarimgidStr;
  }
  return userPlaylistsPlaylistCreator;
}

Map<String, dynamic> $UserPlaylistsPlaylistCreatorToJson(
    UserPlaylistsPlaylistCreator entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['defaultAvatar'] = entity.defaultAvatar;
  data['province'] = entity.province;
  data['authStatus'] = entity.authStatus;
  data['followed'] = entity.followed;
  data['avatarUrl'] = entity.avatarUrl;
  data['accountStatus'] = entity.accountStatus;
  data['gender'] = entity.gender;
  data['city'] = entity.city;
  data['birthday'] = entity.birthday;
  data['userId'] = entity.userId;
  data['userType'] = entity.userType;
  data['nickname'] = entity.nickname;
  data['signature'] = entity.signature;
  data['description'] = entity.description;
  data['detailDescription'] = entity.detailDescription;
  data['avatarImgId'] = entity.avatarImgId;
  data['backgroundImgId'] = entity.backgroundImgId;
  data['backgroundUrl'] = entity.backgroundUrl;
  data['authority'] = entity.authority;
  data['mutual'] = entity.mutual;
  data['expertTags'] = entity.expertTags;
  data['experts'] = entity.experts;
  data['djStatus'] = entity.djStatus;
  data['vipType'] = entity.vipType;
  data['remarkName'] = entity.remarkName;
  data['authenticationTypes'] = entity.authenticationTypes;
  data['avatarDetail'] = entity.avatarDetail;
  data['avatarImgIdStr'] = entity.avatarImgIdStr;
  data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
  data['anchor'] = entity.anchor;
  data['avatarImgId_str'] = entity.avatarimgidStr;
  return data;
}

extension UserPlaylistsPlaylistCreatorExtension on UserPlaylistsPlaylistCreator {
  UserPlaylistsPlaylistCreator copyWith({
    bool? defaultAvatar,
    int? province,
    int? authStatus,
    bool? followed,
    String? avatarUrl,
    int? accountStatus,
    int? gender,
    int? city,
    int? birthday,
    int? userId,
    int? userType,
    String? nickname,
    String? signature,
    String? description,
    String? detailDescription,
    int? avatarImgId,
    int? backgroundImgId,
    String? backgroundUrl,
    int? authority,
    bool? mutual,
    dynamic expertTags,
    dynamic experts,
    int? djStatus,
    int? vipType,
    dynamic remarkName,
    int? authenticationTypes,
    dynamic avatarDetail,
    String? avatarImgIdStr,
    String? backgroundImgIdStr,
    bool? anchor,
    String? avatarimgidStr,
  }) {
    return UserPlaylistsPlaylistCreator()
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..province = province ?? this.province
      ..authStatus = authStatus ?? this.authStatus
      ..followed = followed ?? this.followed
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..accountStatus = accountStatus ?? this.accountStatus
      ..gender = gender ?? this.gender
      ..city = city ?? this.city
      ..birthday = birthday ?? this.birthday
      ..userId = userId ?? this.userId
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..signature = signature ?? this.signature
      ..description = description ?? this.description
      ..detailDescription = detailDescription ?? this.detailDescription
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..authority = authority ?? this.authority
      ..mutual = mutual ?? this.mutual
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts
      ..djStatus = djStatus ?? this.djStatus
      ..vipType = vipType ?? this.vipType
      ..remarkName = remarkName ?? this.remarkName
      ..authenticationTypes = authenticationTypes ?? this.authenticationTypes
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..avatarImgIdStr = avatarImgIdStr ?? this.avatarImgIdStr
      ..backgroundImgIdStr = backgroundImgIdStr ?? this.backgroundImgIdStr
      ..anchor = anchor ?? this.anchor
      ..avatarimgidStr = avatarimgidStr ?? this.avatarimgidStr;
  }
}