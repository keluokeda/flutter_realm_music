import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';

class AudioPlayerViewModel extends ChangeNotifier {
  final _player = AudioPlayer();

  play(String path) async {
    await _player.play(DeviceFileSource(path));
  }
}
