dart
import 'package:flutter/material.dart';
import 'hiragana.dart';
import 'katakana.dart';
import 'grammar.dart';

class HomeScreen extends StatelessWidget {
  final Function(ThemeMode) onThemeChange;

  const HomeScreen({super.key, required this.onThemeChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sakura Nihongo"),
        actions: [
          PopupMenuButton(
            onSelected: (v) {
              if (v == "light") onThemeChange(ThemeMode.light);
              if (v == "dark") onThemeChange(ThemeMode.dark);
              if (v == "system") onThemeChange(ThemeMode.system);
            },
            itemBuilder: () => const [
              PopupMenuItem(value: "light", child: Text("Light")),
              PopupMenuItem(value: "dark", child: Text("Dark")),
               PopupMenuItem(value: "system", child: Text("System")),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Хіраґана"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: () => const Hiragana()),
            ),
          ),
          ListTile(
            title: const Text("Катакана"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: () => const Katakana()),
            ),
          ),
          ListTile(
            title: const Text("Граматика N5–N4"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: () => const
Grammar()),
            ),
          ),
        ],
      ),
    );
  }
}
