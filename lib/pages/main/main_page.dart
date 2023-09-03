import 'package:flutter/material.dart';
import 'package:flutter_realm_music/api/http_service.dart';
import 'package:flutter_realm_music/main.dart';
import 'package:realm/realm.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('每日推荐'),
            onTap: () {
              Navigator.of(context).pushNamed('/recommend/songs');
            },
          ),
          ListTile(
            title: const Text('清空本地'),
            onTap: () {
              // realm.write(() {});
              realm.close();
              Realm.deleteRealm(realm.config.path);
            },
          ),
          ListTile(
            title: const Text('已下载的歌曲'),
            onTap: () {
              Navigator.of(context).pushNamed('/downloaded/songs');
            },
          ),
          ListTile(
            title: const Text('当前用户的歌单'),
            onTap: () {
              Navigator.of(context).pushNamed('/user/playlists',
                  arguments: HttpService.instance.getUserId());
            },
          ),
        ],
      ),
    );
  }
}
