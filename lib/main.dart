import 'package:flutter/material.dart';
import 'package:fooder_lich/home.dart';
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2

  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO create theme
    final theme = FooderlichTheme.dark();
    // TODO Apply Home Widget
    // 3
    return MaterialApp(
        // TODO: Add theme
        theme: theme,
        title: 'Fooder lich',
        // 4
        home: const Home());
  }
}
