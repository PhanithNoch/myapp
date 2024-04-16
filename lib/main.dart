import 'package:counter_app/screens/auth/example_scaffold_screen.dart';
import 'package:counter_app/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleScaffoldScreen(),
    );
  }
}

// StatelessWidget Vs StatefulWidget
// StatelessWidget: The state of the widget cannot change over time.
// StatefulWidget: The state of the widget can change over time.
