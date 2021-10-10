import 'package:flutter/material.dart';
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
    final theme = FooderlichTheme.light();
    // TODO Apply Home Widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      theme: theme,
      title: 'Fooder lich',
      // 4
      home: Scaffold(
        // TODO: style the title

        appBar: AppBar(
          title: Text(
            "Fooder lich App",
            style: theme.textTheme.headline6,
          ),
        ),
        // TODO: style the body text
        body: Center(
          child: Text(
            'Let\'s get Cooking 👩‍🍳',
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
