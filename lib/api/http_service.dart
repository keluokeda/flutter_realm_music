import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_realm_music/api/response/album_detail_entity.dart';
import 'package:flutter_realm_music/api/response/album_dynamic_entity.dart';
import 'package:flutter_realm_music/api/response/artist_album_entity.dart';
import 'package:flutter_realm_music/api/response/artist_desc_entity.dart';
import 'package:flutter_realm_music/api/response/artist_detail_entity.dart';
import 'package:flutter_realm_music/api/response/artist_mv_entity.dart';
import 'package:flutter_realm_music/api/response/login_status_entity.dart';
import 'package:flutter_realm_music/api/response/playlist_detail_entity.dart';
import 'package:flutter_realm_music/api/response/playlist_tracks_entity.dart';
import 'package:flutter_realm_music/api/response/recommend_songs_entity.dart';
import 'package:flutter_realm_music/api/response/song_url_entity.dart';
import 'package:flutter_realm_music/api/response/user_playlists_entity.dart';
import 'package:flutter_realm_music/entity/i_album.dart';
import 'package:flutter_realm_music/entity/i_playlist.dart';
import 'package:flutter_realm_music/entity/i_song.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../entity/i_mv.dart';

class HttpService {
  final Dio _dio = Dio();

  static final HttpService instance = HttpService._privateConstructor();

  HttpService._privateConstructor();

  late SharedPreferences _sharedPreferences;

  ///创建二维码的key
  Future<String?> createKey() async {
    try {
      const path = 'login/qr/key';
      final response = await _dio.get(path);
      return response.data['data']['unikey'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///创建二维码的url
  Future<String> createLoginUrl(String key) async {
    try {
      const path = 'login/qr/create';
      final response = await _dio.get(path, queryParameters: {'key': key});
      return response.data['data']['qrurl'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return '';
    }
  }

  ///检查用户是否扫码
  Future<bool> checkLoginResult(String key) async {
    try {
      const path = 'login/qr/check';
      final response = await _dio.get(path, queryParameters: {'key': key});
      final data = response.data;
      final success = data['code'] == 803;
      if (success) {
        return true;
      }
      Fluttertoast.showToast(msg: data['message']);
      return false;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///获取歌曲地址
  Future<SongUrlEntity?> getSongUrl(int songId) async {
    try {
      const path = 'song/url/v1';
      final response = await _dio.get(path, queryParameters: {
        'id': songId,
        'level': 'jymaster',
      });
      return SongUrlEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取用户歌单
  Future<List<IPlaylist>> getUserPlaylists(int userId) async {
    try {
      const path = 'user/playlist';
      final response = await _dio.get(path, queryParameters: {
        'limit': '1000',
        'uid': userId,
      });
      return UserPlaylistsEntity.fromJson(response.data).playlist ?? [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  ///获取歌单歌曲
  Future<List<ISong>> playlistSongs(int playlistId) async {
    try {
      const path = 'playlist/track/all';
      final response = await _dio.get(path, queryParameters: {
        "id": playlistId,
      });
      return PlaylistTracksEntity.fromJson(response.data).songs ?? [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  ///歌单详情
  Future<PlaylistDetailEntity?> playlistDetail(int playlistId) async {
    try {
      const path = 'playlist/detail';
      final response = await _dio.get(path, queryParameters: {
        'id': playlistId,
      });
      return PlaylistDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///用户是否关注了歌单
  Future<bool> isUserFollowPlaylist(int playlistId) async {
    try {
      const path = 'playlist/detail/dynamic';
      final response = await _dio.get(path, queryParameters: {
        'id': playlistId,
      });
      return response.data['subscribed'];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<LoginStatusEntity?> loginStatus() async {
    try {
      const path = 'login/status';
      final response = await _dio.get(path);
      return LoginStatusEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取每日推荐歌曲
  Future<RecommendSongsEntity?> getRecommendSongs() async {
    try {
      const path = 'recommend/songs';
      final response = await _dio.get(path);
      return RecommendSongsEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///专辑详情
  Future<AlbumDetailEntity?> albumDetail(int albumId) async {
    try {
      const path = 'album';
      final response = await _dio.get(path, queryParameters: {
        'id': albumId,
      });
      return AlbumDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///用户是否关注了专辑
  Future<bool> isUserFollowAlbum(int albumId) async {
    try {
      const path = 'album/detail/dynamic';
      final response = await _dio.get(path, queryParameters: {
        'id': albumId,
      });
      return AlbumDynamicEntity.fromJson(response.data).isSub ?? false;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  ///获取歌手详情
  Future<ArtistDetailEntity?> getArtistDetail(int artistId) async {
    try {
      const path = 'artists';
      final response = await _dio.get(path, queryParameters: {
        'id': artistId,
      });
      return ArtistDetailEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手简介
  Future<ArtistDescEntity?> getArtistDesc(int artistId) async {
    try {
      const path = 'artist/desc';
      final response = await _dio.get(path, queryParameters: {
        'id': artistId,
      });
      return ArtistDescEntity.fromJson(response.data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  ///获取歌手专辑
  Future<List<IAlbum>> getArtistAlbums(int artistId) async {
    try {
      const path = 'artist/album';
      final response = await _dio.get(path, queryParameters: {
        'id': artistId,
        'limit': '1000',
      });
      return ArtistAlbumEntity.fromJson(response.data).hotAlbums ?? [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  ///获取歌手mv
  Future<List<IMv>> getArtistMvs(int artistId) async {
    try {
      const path = 'artist/mv';
      final response = await _dio.get(path, queryParameters: {
        'id': artistId,
        'limit': 1000,
      });
      return ArtistMvEntity.fromJson(response.data).mvs ?? [];
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return [];
    }
  }

  ///获取当前用户id
  int? getUserId() {
    return _sharedPreferences.getInt('userId');
  }

  ///设置用户id
  Future setUserId(int? userId) async {
    if (userId == null) {
      await _sharedPreferences.remove('userId');
    } else {
      await _sharedPreferences.setInt('userId', userId);
    }
  }

  ///初始化
  Future<void> init() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    _sharedPreferences = await SharedPreferences.getInstance();

    final cookieJar = PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage('${appDocDir.path}/.cookies/'));
    _dio.interceptors.add(CookieManager(cookieJar));

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      //加上时间戳 防止缓存
      options.queryParameters['timestamp'] =
          DateTime.now().microsecondsSinceEpoch;

      return handler.next(options);
    }, onResponse: (response, handler) {
      if (kDebugMode) {
        print('响应打印开始======');
        print("url = ${response.realUri}");
        print("data = ${response.data}");
        print('header = ${response.headers}');
        print('响应打印结束======');
      }
      return handler.next(response);
    }));
    _dio.options.baseUrl = "https://ke-music.cpolar.top/";
  }
}
