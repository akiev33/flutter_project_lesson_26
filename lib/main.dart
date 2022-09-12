import 'package:flutter/material.dart';
import 'package:flutter_project_lesson_26/screens/stack/stack_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: const StackScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoFlexTextTheme(),
      ),
    );
  }
}

