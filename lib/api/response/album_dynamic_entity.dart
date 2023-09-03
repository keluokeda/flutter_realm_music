import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/album_dynamic_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/album_dynamic_entity.g.dart';

@JsonSerializable()
class AlbumDynamicEntity {
	bool? onSale;
	dynamic albumGameInfo;
	int? commentCount;
	int? likedCount;
	int? shareCount;
	bool? isSub;
	int? subTime;
	int? subCount;
	int? code;

	AlbumDynamicEntity();

	factory AlbumDynamicEntity.fromJson(Map<String, dynamic> json) => $AlbumDynamicEntityFromJson(json);

	Map<String, dynamic> toJson() => $AlbumDynamicEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}