import 'package:flutter_realm_music/generated/json/base/json_field.dart';
import 'package:flutter_realm_music/generated/json/artist_desc_entity.g.dart';
import 'dart:convert';
export 'package:flutter_realm_music/generated/json/artist_desc_entity.g.dart';

@JsonSerializable()
class ArtistDescEntity {
	List<ArtistDescIntroduction>? introduction;
	String? briefDesc;
	int? count;
	dynamic topicData;
	int? code;

	ArtistDescEntity();

	factory ArtistDescEntity.fromJson(Map<String, dynamic> json) => $ArtistDescEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArtistDescIntroduction {
	String? ti;
	String? txt;

	ArtistDescIntroduction();

	factory ArtistDescIntroduction.fromJson(Map<String, dynamic> json) => $ArtistDescIntroductionFromJson(json);

	Map<String, dynamic> toJson() => $ArtistDescIntroductionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}