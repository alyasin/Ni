dart
import 'package:flutter_tts/flutter_tts.dart';

class TTSService {
  static final FlutterTts _tts = FlutterTts();

  static Future init() async {
    await _tts.setLanguage("ja-JP");
    await _tts.setSpeechRate(0.45);
    await _tts.setPitch(1.0);
  }

  static Future speak(String text) async {
    await _tts.stop();
    await _tts.speak(text);
  }

  static Future stop() async {
    await _tts.stop();
  }
}
