dart
import 'package:flutter/material.dart';
import 'home.dart';

class SakuraApp extends StatefulWidget {
  const SakuraApp({super.key});

  @override
  State<SakuraApp> createState() => _SakuraAppState();
}

class _SakuraAppState extends State<SakuraApp> {
  ThemeMode mode = ThemeMode.system;

  void setTheme(ThemeMode m) {
    setState(() => mode = m);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: mode,
      home: HomeScreen(onThemeChange: setTheme),
    );
  }
}
