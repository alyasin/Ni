dart
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Grammar extends StatelessWidget {
  const Grammar({super.key});

  static final FlutterTts tts = FlutterTts();

  static const List<Map<String, String>> data = [
    {"t": "です", "e": "私は学生です"},
    {"t": "は", "e": "猫は可愛い"},
    {"t": "が", "e": "猫がいます"},
    {"t": "たい (N4)", "e": "日本に行きたい"},
    {"t": "た form (N4)", "e": "映画を見た"},
    {"t": "ない form (N4)", "e": "行かない"},
  ];

  Future speak(String text) async {
    await tts.setLanguage("ja-JP");
    await tts.setSpeechRate(0.45);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Граматика N5–N4")),
      body: ListView(
        children: data.map((g) {
          return Card(
            child: ListTile(
              title: Text(g["t"]!),
              subtitle: Text(g["e"]!),
              trailing: IconButton(
                icon: const Icon(Icons.volume_up),
                onPressed: () => speak(g["e"]!),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
