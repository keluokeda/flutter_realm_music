import 'package:flutter_realm_music/entity/i_user.dart';

abstract class IPlaylist {
  int get playlistId;

  String get playlistName;

  String get playlistImage;

  IUser get creatorUser;
}
