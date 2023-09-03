import 'package:flutter_realm_music/entity/i_user.dart';
import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/login_status_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/login_status_entity.g.dart';

@JsonSerializable()
class LoginStatusEntity {
  LoginStatusData? data;

  LoginStatusEntity();

  factory LoginStatusEntity.fromJson(Map<String, dynamic> json) =>
      $LoginStatusEntityFromJson(json);

  Map<String, dynamic> toJson() => $LoginStatusEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LoginStatusData {
  int? code;
  LoginStatusDataAccount? account;
  LoginStatusDataProfile? profile;

  LoginStatusData();

  factory LoginStatusData.fromJson(Map<String, dynamic> json) =>
      $LoginStatusDataFromJson(json);

  Map<String, dynamic> toJson() => $LoginStatusDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LoginStatusDataAccount {
  int? id;
  String? userName;
  int? type;
  int? status;
  int? whitelistAuthority;
  int? createTime;
  int? tokenVersion;
  int? ban;
  int? baoyueVersion;
  int? donateVersion;
  int? vipType;
  bool? anonimousUser;
  bool? paidFee;

  LoginStatusDataAccount();

  factory LoginStatusDataAccount.fromJson(Map<String, dynamic> json) =>
      $LoginStatusDataAccountFromJson(json);

  Map<String, dynamic> toJson() => $LoginStatusDataAccountToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class LoginStatusDataProfile extends IUser {
  int? userId;
  int? userType;
  String? nickname;
  int? avatarImgId;
  String? avatarUrl;
  int? backgroundImgId;
  String? backgroundUrl;
  String? signature;
  int? createTime;
  String? userName;
  int? accountType;
  String? shortUserName;
  int? birthday;
  int? authority;
  int? gender;
  int? accountStatus;
  int? province;
  int? city;
  int? authStatus;
  dynamic description;
  dynamic detailDescription;
  bool? defaultAvatar;
  dynamic expertTags;
  dynamic experts;
  int? djStatus;
  int? locationStatus;
  int? vipType;
  bool? followed;
  bool? mutual;
  bool? authenticated;
  int? lastLoginTime;
  String? lastLoginIP;
  dynamic remarkName;
  int? viptypeVersion;
  int? authenticationTypes;
  dynamic avatarDetail;
  bool? anchor;

  LoginStatusDataProfile();

  factory LoginStatusDataProfile.fromJson(Map<String, dynamic> json) =>
      $LoginStatusDataProfileFromJson(json);

  Map<String, dynamic> toJson() => $LoginStatusDataProfileToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }

  @override
  int get id => userId!;

  @override
  String get userAvatar => avatarUrl!;

  @override
  String get userSignature => signature!;

  @override
  String get username => nickname!;
}
