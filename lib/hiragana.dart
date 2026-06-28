`dart
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Hiragana extends StatelessWidget {
  const Hiragana({super.key});

  static final FlutterTts tts = FlutterTts();

  static const List<Map<String, String>> data = [
    {"j": "あ", "r": "a"},
    {"j": "い", "r": "i"},
    {"j": "う", "r": "u"},
    {"j": "え", "r": "e"},
    {"j": "お", "r": "o"},
    {"j": "か", "r": "ka"},
    {"j": "き", "r": "ki"},
    {"j": "く", "r": "ku"},
    {"j": "け", "r": "ke"},
    {"j": "こ", "r": "ko"},
  ];

  Future speak(String text) async {
    await tts.setLanguage("ja-JP");
    await tts.setSpeechRate(0.45);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Хіраґана")),
      body: ListView(
        children: data.map((e) {
          return ListTile(
            title: Text(e["j"]!, style: const TextStyle(fontSize: 30)),
            subtitle: Text(e["r"]!),
            trailing: IconButton(
              icon: const Icon(Icons.volume_up),
              onPressed: () => speak(e["j"]!),
            ),
          );
        }).toList(),
      ),
    );
  }
}
