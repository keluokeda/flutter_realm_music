import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/i_user.dart';
import 'package:flutter_realm_music/entity/user_playlist_relationship.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/playlist_repository.dart';

class UserRepository {
  static final UserRepository instance = UserRepository._privateConstructor();

  UserRepository._privateConstructor();

  ///保存用户
  void saveUser(IUser user) {
    realm.write(() {
      final target = convert(user);
      realm.add(target, update: true);
    });
  }

  //保存用户和歌单的关系
  void savePlaylistRelationship(
      UserPlaylistRelationship relationship, IPlaylist playlist) {
    final currentUser = getCurrentUser();
    final target = currentUser.playlists
        .where((element) => element.id == playlist.playlistId)
        .firstOrNull;

    final UserPlaylistRelationship oldRelationship;
    if (target == null) {
      //没有任何关系
      oldRelationship = UserPlaylistRelationship.none;
    } else {
      oldRelationship = target.creator?.id == playlist.creatorUser.id
          ? UserPlaylistRelationship.creator
          : UserPlaylistRelationship.followed;
    }

    if (oldRelationship == relationship) {
      //关系一致
      return;
    }

    //关系不一致 更新关系
    realm.write(() {
      if (relationship == UserPlaylistRelationship.none) {
        //没有关系了
        if (target != null) {
          //移除歌单
          currentUser.playlists.remove(target);
        }
      } else {
        //创建者或关注
        if (target == null) {
          currentUser.playlists.add(PlaylistRepository.convert(playlist));
        }
      }
    });
  }

  ///获取当前用户
  UserObject getCurrentUser() {
    return realm.find<UserObject>(HttpService.instance.getUserId()!)!;
  }

  static UserObject convert(IUser user) {
    final target = realm.find<UserObject>(user.id);

    if (target == null) {
      return UserObject(
          user.id, user.username, user.userAvatar, user.userSignature);
    } else {
      target.name = user.username;
      target.avatar = user.userAvatar;
      target.signature = user.userSignature;
      return target;
    }
  }
}
