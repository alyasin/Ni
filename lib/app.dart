dart
import 'package:flutter/material.dart';
import 'home.dart';

class NihonGoApp extends StatefulWidget {
  const NihonGoApp({super.key});

  @override
  State<NihonGoApp> createState() => _NihonGoAppState();
}

class _NihonGoAppState extends State<NihonGoApp> {
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
