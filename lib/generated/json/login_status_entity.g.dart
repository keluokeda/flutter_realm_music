import 'package:flutter_realm_music/generated/json/base/json_convert_content.dart';
import 'package:flutter_realm_music/api/response/login_status_entity.dart';
import 'package:flutter_realm_music/entity/i_user.dart';


LoginStatusEntity $LoginStatusEntityFromJson(Map<String, dynamic> json) {
  final LoginStatusEntity loginStatusEntity = LoginStatusEntity();
  final LoginStatusData? data = jsonConvert.convert<LoginStatusData>(
      json['data']);
  if (data != null) {
    loginStatusEntity.data = data;
  }
  return loginStatusEntity;
}

Map<String, dynamic> $LoginStatusEntityToJson(LoginStatusEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  return data;
}

extension LoginStatusEntityExtension on LoginStatusEntity {
  LoginStatusEntity copyWith({
    LoginStatusData? data,
  }) {
    return LoginStatusEntity()
      ..data = data ?? this.data;
  }
}

LoginStatusData $LoginStatusDataFromJson(Map<String, dynamic> json) {
  final LoginStatusData loginStatusData = LoginStatusData();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    loginStatusData.code = code;
  }
  final LoginStatusDataAccount? account = jsonConvert.convert<
      LoginStatusDataAccount>(json['account']);
  if (account != null) {
    loginStatusData.account = account;
  }
  final LoginStatusDataProfile? profile = jsonConvert.convert<
      LoginStatusDataProfile>(json['profile']);
  if (profile != null) {
    loginStatusData.profile = profile;
  }
  return loginStatusData;
}

Map<String, dynamic> $LoginStatusDataToJson(LoginStatusData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['account'] = entity.account?.toJson();
  data['profile'] = entity.profile?.toJson();
  return data;
}

extension LoginStatusDataExtension on LoginStatusData {
  LoginStatusData copyWith({
    int? code,
    LoginStatusDataAccount? account,
    LoginStatusDataProfile? profile,
  }) {
    return LoginStatusData()
      ..code = code ?? this.code
      ..account = account ?? this.account
      ..profile = profile ?? this.profile;
  }
}

LoginStatusDataAccount $LoginStatusDataAccountFromJson(
    Map<String, dynamic> json) {
  final LoginStatusDataAccount loginStatusDataAccount = LoginStatusDataAccount();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    loginStatusDataAccount.id = id;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    loginStatusDataAccount.userName = userName;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    loginStatusDataAccount.type = type;
  }
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    loginStatusDataAccount.status = status;
  }
  final int? whitelistAuthority = jsonConvert.convert<int>(
      json['whitelistAuthority']);
  if (whitelistAuthority != null) {
    loginStatusDataAccount.whitelistAuthority = whitelistAuthority;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    loginStatusDataAccount.createTime = createTime;
  }
  final int? tokenVersion = jsonConvert.convert<int>(json['tokenVersion']);
  if (tokenVersion != null) {
    loginStatusDataAccount.tokenVersion = tokenVersion;
  }
  final int? ban = jsonConvert.convert<int>(json['ban']);
  if (ban != null) {
    loginStatusDataAccount.ban = ban;
  }
  final int? baoyueVersion = jsonConvert.convert<int>(json['baoyueVersion']);
  if (baoyueVersion != null) {
    loginStatusDataAccount.baoyueVersion = baoyueVersion;
  }
  final int? donateVersion = jsonConvert.convert<int>(json['donateVersion']);
  if (donateVersion != null) {
    loginStatusDataAccount.donateVersion = donateVersion;
  }
  final int? vipType = jsonConvert.convert<int>(json['vipType']);
  if (vipType != null) {
    loginStatusDataAccount.vipType = vipType;
  }
  final bool? anonimousUser = jsonConvert.convert<bool>(json['anonimousUser']);
  if (anonimousUser != null) {
    loginStatusDataAccount.anonimousUser = anonimousUser;
  }
  final bool? paidFee = jsonConvert.convert<bool>(json['paidFee']);
  if (paidFee != null) {
    loginStatusDataAccount.paidFee = paidFee;
  }
  return loginStatusDataAccount;
}

Map<String, dynamic> $LoginStatusDataAccountToJson(
    LoginStatusDataAccount entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['userName'] = entity.userName;
  data['type'] = entity.type;
  data['status'] = entity.status;
  data['whitelistAuthority'] = entity.whitelistAuthority;
  data['createTime'] = entity.createTime;
  data['tokenVersion'] = entity.tokenVersion;
  data['ban'] = entity.ban;
  data['baoyueVersion'] = entity.baoyueVersion;
  data['donateVersion'] = entity.donateVersion;
  data['vipType'] = entity.vipType;
  data['anonimousUser'] = entity.anonimousUser;
  data['paidFee'] = entity.paidFee;
  return data;
}

extension LoginStatusDataAccountExtension on LoginStatusDataAccount {
  LoginStatusDataAccount copyWith({
    int? id,
    String? userName,
    int? type,
    int? status,
    int? whitelistAuthority,
    int? createTime,
    int? tokenVersion,
    int? ban,
    int? baoyueVersion,
    int? donateVersion,
    int? vipType,
    bool? anonimousUser,
    bool? paidFee,
  }) {
    return LoginStatusDataAccount()
      ..id = id ?? this.id
      ..userName = userName ?? this.userName
      ..type = type ?? this.type
      ..status = status ?? this.status
      ..whitelistAuthority = whitelistAuthority ?? this.whitelistAuthority
      ..createTime = createTime ?? this.createTime
      ..tokenVersion = tokenVersion ?? this.tokenVersion
      ..ban = ban ?? this.ban
      ..baoyueVersion = baoyueVersion ?? this.baoyueVersion
      ..donateVersion = donateVersion ?? this.donateVersion
      ..vipType = vipType ?? this.vipType
      ..anonimousUser = anonimousUser ?? this.anonimousUser
      ..paidFee = paidFee ?? this.paidFee;
  }
}

LoginStatusDataProfile $LoginStatusDataProfileFromJson(
    Map<String, dynamic> json) {
  final LoginStatusDataProfile loginStatusDataProfile = LoginStatusDataProfile();
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    loginStatusDataProfile.userId = userId;
  }
  final int? userType = jsonConvert.convert<int>(json['userType']);
  if (userType != null) {
    loginStatusDataProfile.userType = userType;
  }
  final String? nickname = jsonConvert.convert<String>(json['nickname']);
  if (nickname != null) {
    loginStatusDataProfile.nickname = nickname;
  }
  final int? avatarImgId = jsonConvert.convert<int>(json['avatarImgId']);
  if (avatarImgId != null) {
    loginStatusDataProfile.avatarImgId = avatarImgId;
  }
  final String? avatarUrl = jsonConvert.convert<String>(json['avatarUrl']);
  if (avatarUrl != null) {
    loginStatusDataProfile.avatarUrl = avatarUrl;
  }
  final int? backgroundImgId = jsonConvert.convert<int>(
      json['backgroundImgId']);
  if (backgroundImgId != null) {
    loginStatusDataProfile.backgroundImgId = backgroundImgId;
  }
  final String? backgroundUrl = jsonConvert.convert<String>(
      json['backgroundUrl']);
  if (backgroundUrl != null) {
    loginStatusDataProfile.backgroundUrl = backgroundUrl;
  }
  final String? signature = jsonConvert.convert<String>(json['signature']);
  if (signature != null) {
    loginStatusDataProfile.signature = signature;
  }
  final int? createTime = jsonConvert.convert<int>(json['createTime']);
  if (createTime != null) {
    loginStatusDataProfile.createTime = createTime;
  }
  final String? userName = jsonConvert.convert<String>(json['userName']);
  if (userName != null) {
    loginStatusDataProfile.userName = userName;
  }
  final int? accountType = jsonConvert.convert<int>(json['accountType']);
  if (accountType != null) {
    loginStatusDataProfile.accountType = accountType;
  }
  final String? shortUserName = jsonConvert.convert<String>(
      json['shortUserName']);
  if (shortUserName != null) {
    loginStatusDataProfile.shortUserName = shortUserName;
  }
  final int? birthday = jsonConvert.convert<int>(json['birthday']);
  if (birthday != null) {
    loginStatusDataProfile.birthday = birthday;
  }
  final int? authority = jsonConvert.convert<int>(json['authority']);
  if (authority != null) {
    loginStatusDataProfile.authority = authority;
  }
  final int? gender = jsonConvert.convert<int>(json['gender']);
  if (gender != null) {
    loginStatusDataProfile.gender = gender;
  }
  final int? accountStatus = jsonConvert.convert<int>(json['accountStatus']);
  if (accountStatus != null) {
    loginStatusDataProfile.accountStatus = accountStatus;
  }
  final int? province = jsonConvert.convert<int>(json['province']);
  if (province != null) {
    loginStatusDataProfile.province = province;
  }
  final int? city = jsonConvert.convert<int>(json['city']);
  if (city != null) {
    loginStatusDataProfile.city = city;
  }
  final int? authStatus = jsonConvert.convert<int>(json['authStatus']);
  if (authStatus != null) {
    loginStatusDataProfile.authStatus = authStatus;
  }
  final dynamic description = json['description'];
  if (description != null) {
    loginStatusDataProfile.description = description;
  }
  final dynamic detailDescription = json['detailDescription'];
  if (detailDescription != null) {
    loginStatusDataProfile.detailDescription = detailDescription;
  }
  final bool? defaultAvatar = jsonConvert.convert<bool>(json['defaultAvatar']);
  if (defaultAvatar != null) {
    loginStatusDataProfile.defaultAvatar = defaultAvatar;
  }
  final dynamic expertTags = json['expertTags'];
  if (expertTags != null) {
    loginStatusDataProfile.expertTags = expertTags;
  }
  final dynamic experts = json['experts'];
  if (experts != null) {
    loginStatusDataProfile.experts = experts;
  }
  final int? djStatus = jsonConvert.convert<int>(json['djStatus']);
  if (djStatus != null) {
    loginStatusDataProfile.djStatus = djStatus;
  }
  final int? locationStatus = jsonConvert.convert<int>(json['locationStatus']);
  if (locationStatus != null) {
    loginStatusDataProfile.locationStatus = locationStatus;
  }
  final int? vipType = jsonConvert.convert<int>(json['vipType']);
  if (vipType != null) {
    loginStatusDataProfile.vipType = vipType;
  }
  final bool? followed = jsonConvert.convert<bool>(json['followed']);
  if (followed != null) {
    loginStatusDataProfile.followed = followed;
  }
  final bool? mutual = jsonConvert.convert<bool>(json['mutual']);
  if (mutual != null) {
    loginStatusDataProfile.mutual = mutual;
  }
  final bool? authenticated = jsonConvert.convert<bool>(json['authenticated']);
  if (authenticated != null) {
    loginStatusDataProfile.authenticated = authenticated;
  }
  final int? lastLoginTime = jsonConvert.convert<int>(json['lastLoginTime']);
  if (lastLoginTime != null) {
    loginStatusDataProfile.lastLoginTime = lastLoginTime;
  }
  final String? lastLoginIP = jsonConvert.convert<String>(json['lastLoginIP']);
  if (lastLoginIP != null) {
    loginStatusDataProfile.lastLoginIP = lastLoginIP;
  }
  final dynamic remarkName = json['remarkName'];
  if (remarkName != null) {
    loginStatusDataProfile.remarkName = remarkName;
  }
  final int? viptypeVersion = jsonConvert.convert<int>(json['viptypeVersion']);
  if (viptypeVersion != null) {
    loginStatusDataProfile.viptypeVersion = viptypeVersion;
  }
  final int? authenticationTypes = jsonConvert.convert<int>(
      json['authenticationTypes']);
  if (authenticationTypes != null) {
    loginStatusDataProfile.authenticationTypes = authenticationTypes;
  }
  final dynamic avatarDetail = json['avatarDetail'];
  if (avatarDetail != null) {
    loginStatusDataProfile.avatarDetail = avatarDetail;
  }
  final bool? anchor = jsonConvert.convert<bool>(json['anchor']);
  if (anchor != null) {
    loginStatusDataProfile.anchor = anchor;
  }
  return loginStatusDataProfile;
}

Map<String, dynamic> $LoginStatusDataProfileToJson(
    LoginStatusDataProfile entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['userId'] = entity.userId;
  data['userType'] = entity.userType;
  data['nickname'] = entity.nickname;
  data['avatarImgId'] = entity.avatarImgId;
  data['avatarUrl'] = entity.avatarUrl;
  data['backgroundImgId'] = entity.backgroundImgId;
  data['backgroundUrl'] = entity.backgroundUrl;
  data['signature'] = entity.signature;
  data['createTime'] = entity.createTime;
  data['userName'] = entity.userName;
  data['accountType'] = entity.accountType;
  data['shortUserName'] = entity.shortUserName;
  data['birthday'] = entity.birthday;
  data['authority'] = entity.authority;
  data['gender'] = entity.gender;
  data['accountStatus'] = entity.accountStatus;
  data['province'] = entity.province;
  data['city'] = entity.city;
  data['authStatus'] = entity.authStatus;
  data['description'] = entity.description;
  data['detailDescription'] = entity.detailDescription;
  data['defaultAvatar'] = entity.defaultAvatar;
  data['expertTags'] = entity.expertTags;
  data['experts'] = entity.experts;
  data['djStatus'] = entity.djStatus;
  data['locationStatus'] = entity.locationStatus;
  data['vipType'] = entity.vipType;
  data['followed'] = entity.followed;
  data['mutual'] = entity.mutual;
  data['authenticated'] = entity.authenticated;
  data['lastLoginTime'] = entity.lastLoginTime;
  data['lastLoginIP'] = entity.lastLoginIP;
  data['remarkName'] = entity.remarkName;
  data['viptypeVersion'] = entity.viptypeVersion;
  data['authenticationTypes'] = entity.authenticationTypes;
  data['avatarDetail'] = entity.avatarDetail;
  data['anchor'] = entity.anchor;
  return data;
}

extension LoginStatusDataProfileExtension on LoginStatusDataProfile {
  LoginStatusDataProfile copyWith({
    int? userId,
    int? userType,
    String? nickname,
    int? avatarImgId,
    String? avatarUrl,
    int? backgroundImgId,
    String? backgroundUrl,
    String? signature,
    int? createTime,
    String? userName,
    int? accountType,
    String? shortUserName,
    int? birthday,
    int? authority,
    int? gender,
    int? accountStatus,
    int? province,
    int? city,
    int? authStatus,
    dynamic description,
    dynamic detailDescription,
    bool? defaultAvatar,
    dynamic expertTags,
    dynamic experts,
    int? djStatus,
    int? locationStatus,
    int? vipType,
    bool? followed,
    bool? mutual,
    bool? authenticated,
    int? lastLoginTime,
    String? lastLoginIP,
    dynamic remarkName,
    int? viptypeVersion,
    int? authenticationTypes,
    dynamic avatarDetail,
    bool? anchor,
  }) {
    return LoginStatusDataProfile()
      ..userId = userId ?? this.userId
      ..userType = userType ?? this.userType
      ..nickname = nickname ?? this.nickname
      ..avatarImgId = avatarImgId ?? this.avatarImgId
      ..avatarUrl = avatarUrl ?? this.avatarUrl
      ..backgroundImgId = backgroundImgId ?? this.backgroundImgId
      ..backgroundUrl = backgroundUrl ?? this.backgroundUrl
      ..signature = signature ?? this.signature
      ..createTime = createTime ?? this.createTime
      ..userName = userName ?? this.userName
      ..accountType = accountType ?? this.accountType
      ..shortUserName = shortUserName ?? this.shortUserName
      ..birthday = birthday ?? this.birthday
      ..authority = authority ?? this.authority
      ..gender = gender ?? this.gender
      ..accountStatus = accountStatus ?? this.accountStatus
      ..province = province ?? this.province
      ..city = city ?? this.city
      ..authStatus = authStatus ?? this.authStatus
      ..description = description ?? this.description
      ..detailDescription = detailDescription ?? this.detailDescription
      ..defaultAvatar = defaultAvatar ?? this.defaultAvatar
      ..expertTags = expertTags ?? this.expertTags
      ..experts = experts ?? this.experts
      ..djStatus = djStatus ?? this.djStatus
      ..locationStatus = locationStatus ?? this.locationStatus
      ..vipType = vipType ?? this.vipType
      ..followed = followed ?? this.followed
      ..mutual = mutual ?? this.mutual
      ..authenticated = authenticated ?? this.authenticated
      ..lastLoginTime = lastLoginTime ?? this.lastLoginTime
      ..lastLoginIP = lastLoginIP ?? this.lastLoginIP
      ..remarkName = remarkName ?? this.remarkName
      ..viptypeVersion = viptypeVersion ?? this.viptypeVersion
      ..authenticationTypes = authenticationTypes ?? this.authenticationTypes
      ..avatarDetail = avatarDetail ?? this.avatarDetail
      ..anchor = anchor ?? this.anchor;
  }
}