import 'package:flutter/material.dart';
import 'package:webtoon_and/screens/home_screen.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool inDebug = false;
    assert(() {
      inDebug = true;
      return true;
    }());
    if (inDebug) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error\n${details.exception}',
        style: const TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  };
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
