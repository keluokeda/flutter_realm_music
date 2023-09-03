import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/song_url_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/song_url_entity.g.dart';

@JsonSerializable()
class SongUrlEntity {
	List<SongUrlData>? data;
	int? code;

	SongUrlEntity();

	factory SongUrlEntity.fromJson(Map<String, dynamic> json) => $SongUrlEntityFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlData {
	int? id;
	String? url;
	int? br;
	int? size;
	String? md5;
	int? code;
	int? expi;
	String? type;
	double? gain;
	double? peak;
	int? fee;
	dynamic uf;
	int? payed;
	int? flag;
	bool? canExtend;
	dynamic freeTrialInfo;
	String? level;
	String? encodeType;
	SongUrlDataFreeTrialPrivilege? freeTrialPrivilege;
	SongUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege;
	int? urlSource;
	int? rightSource;
	dynamic podcastCtrp;
	dynamic effectTypes;
	int? time;

	SongUrlData();

	factory SongUrlData.fromJson(Map<String, dynamic> json) => $SongUrlDataFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	dynamic listenType;
	dynamic cannotListenReason;

	SongUrlDataFreeTrialPrivilege();

	factory SongUrlDataFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongUrlDataFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataFreeTrialPrivilegeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTimeTrialPrivilege {
	bool? resConsumable;
	bool? userConsumable;
	int? type;
	int? remainTime;

	SongUrlDataFreeTimeTrialPrivilege();

	factory SongUrlDataFreeTimeTrialPrivilege.fromJson(Map<String, dynamic> json) => $SongUrlDataFreeTimeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $SongUrlDataFreeTimeTrialPrivilegeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}