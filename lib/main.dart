import 'package:flutter/material.dart' hide NavigationDrawer;
import 'pages/home.dart' hide NavigationDrawer;


void main() => runApp(const BootstrapApp());

class BootstrapApp extends StatelessWidget {
  const BootstrapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boilerplate APP',
      theme: ThemeData(useMaterial3: true),
      home: const HomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
