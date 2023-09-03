import 'package:flutter/material.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/object/object.dart';
import 'package:flutter_realm_music/pages/album_detail/album_detail_page.dart';
import 'package:flutter_realm_music/pages/artist_detail/artist_detail_page.dart';
import 'package:flutter_realm_music/pages/audio_player_view_model.dart';
import 'package:flutter_realm_music/pages/download_view_model.dart';
import 'package:flutter_realm_music/pages/downloaded_songs/downloaded_songs_page.dart';
import 'package:flutter_realm_music/pages/login/login_page.dart';
import 'package:flutter_realm_music/pages/main/main_page.dart';
import 'package:flutter_realm_music/pages/playlist_detail/playlist_detail_page.dart';
import 'package:flutter_realm_music/pages/recommend_songs/recommend_songs_page.dart';
import 'package:flutter_realm_music/pages/user_playlists/user_playlists_page.dart';
import 'package:provider/provider.dart';
import 'package:realm/realm.dart';

final config = Configuration.local([
  SongObject.schema,
  ArtistObject.schema,
  AlbumObject.schema,
  RecommendSongsObject.schema,
  DownloadInfo.schema,
  UserObject.schema,
  PlaylistObject.schema,
  ArtistDescObject.schema,
  MvObject.schema,
], schemaVersion: 6);

final realm = Realm(config);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HttpService.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DownloadViewModel()),
        ChangeNotifierProvider(create: (_) => AudioPlayerViewModel()),
      ],
      child: _buildMaterialApp(),
    );
  }

  MaterialApp _buildMaterialApp() {
    return MaterialApp(
      title: '克音乐',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/login': (_) => const LoginPage(),
        '/main': (_) => const MainPage(),
        '/recommend/songs': (_) => const RecommendSongsPage(),
        '/downloaded/songs': (_) => const DownloadedSongsPage(),
        '/user/playlists': (_) => const UserPlaylistsPage(),
        '/playlist/detail': (_) => const PlaylistDetailPage(),
        '/album/detail': (_) => const AlbumDetailPage(),
        '/artist/detail': (_) => const ArtistDetailPage()
      },
      initialRoute:
          HttpService.instance.getUserId() == null ? '/login' : '/main',
    );
  }
}
