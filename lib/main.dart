import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome Parimal",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 3)),
      home: HomePage(),
    );
  }
}
