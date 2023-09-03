import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/user_playlists/user_playlists_view_model.dart';
import 'package:provider/provider.dart';

class UserPlaylistsPage extends StatelessWidget {
  const UserPlaylistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)?.settings.arguments as int;

    return ChangeNotifierProvider(
      create: (_) => UserPlaylistsViewModel(userId),
      child: Consumer<UserPlaylistsViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('我的歌单'),
            ),
            body: ListView(
              children: viewModel.playlists
                  .map((e) => ListTile(
                        leading: CachedNetworkImage(
                          imageUrl: e.playlistImage,
                          width: 40,
                          height: 40,
                        ),
                        title: Text(
                          e.playlistName,
                          maxLines: 1,
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('/playlist/detail',
                              arguments: e.playlistId);
                        },
                      ))
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
