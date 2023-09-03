import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/user_entity.dart';
import 'package:flutter_realm_music/object/object.dart';

import 'i_user.dart';

class PlaylistEntity extends IPlaylist {
  @override
  final int playlistId;
  @override
  final String playlistName;
  @override
  final String playlistImage;
  @override
  final IUser creatorUser;

  PlaylistEntity(
      this.playlistId, this.playlistName, this.playlistImage, this.creatorUser);

  factory PlaylistEntity.fromObject(PlaylistObject object) {
    return PlaylistEntity(object.id, object.name, object.image,
        UserEntity.fromObject(object.creator!));
  }
}
