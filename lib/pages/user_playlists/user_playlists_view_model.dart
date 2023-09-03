import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/entity/playlist_entity.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/repository/playlist_repository.dart';
import 'package:realm/src/list.dart';

import '../../entity/i_playlist.dart';

class UserPlaylistsViewModel extends ChangeNotifier {
  List<IPlaylist> _playlists = [];

  StreamSubscription<RealmListChanges<PlaylistObject>>? _subscription;

  List<IPlaylist> get playlists => _playlists;

  final int userId;

  UserPlaylistsViewModel(this.userId) {
    _insertUser();

    final userObject = realm.find<UserObject>(userId)!;
    _updatePlaylists(userObject.playlists);
    _subscription = userObject.playlists.changes.listen((event) {
      _updatePlaylists(userObject.playlists);
    });

    HttpService.instance.getUserPlaylists(userId).then((value) =>
        {PlaylistRepository.instance.saveUserPlaylists(userId, value)});
  }

  _updatePlaylists(RealmList<PlaylistObject> playlists) {
    _playlists = playlists.map((e) => PlaylistEntity.fromObject(e)).toList();
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  void _insertUser() {
    final userObject = realm.find<UserObject>(userId);
    if (userObject == null) {
      realm.write(() {
        //确保有一个用户可以观察
        realm.add(UserObject(userId, '', '', ''));
      });
    }
  }
}
