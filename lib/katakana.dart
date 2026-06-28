dart
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Katakana extends StatelessWidget {
  const Katakana({super.key});

  static final FlutterTts tts = FlutterTts();

  static const List<Map<String, String>> data = [
    {"j": "ア", "r": "a"},
    {"j": "イ", "r": "i"},
    {"j": "ウ", "r": "u"},
    {"j": "エ", "r": "e"},
    {"j": "オ", "r": "o"},
    {"j": "カ", "r": "ka"},
    {"j": "キ", "r": "ki"},
    {"j": "ク", "r": "ku"},
    {"j": "ケ", "r": "ke"},
    {"j": "コ", "r": "ko"},
  ];

  Future speak(String text) async {
    await tts.setLanguage("ja-JP");
    await tts.setSpeechRate(0.45);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Катакана")),
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
