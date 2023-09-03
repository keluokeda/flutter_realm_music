import 'package:flutter/material.dart';
import 'package:flutter_realm_music/pages/component/song_view.dart';
import 'package:flutter_realm_music/pages/recommend_songs/recommend_songs_view_model.dart';
import 'package:provider/provider.dart';

class RecommendSongsPage extends StatelessWidget {
  const RecommendSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RecommendSongsViewModel(),
      child: Consumer<RecommendSongsViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('每日推荐'),
            ),
            body: ListView(
              children: viewModel.songs.map((e) => SongView(e)).toList(),
            ),
          );
        },
      ),
    );
  }
}
