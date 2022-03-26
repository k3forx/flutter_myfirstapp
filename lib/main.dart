import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My First App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const StartPage());
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Slide Puzzle',
          style: TextStyle(fontSize: 32),
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
            onPressed: () => showPuzzlePage(context),
            child: const Text('Start'))
      ]),
    ));
  }
}

void showPuzzlePage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const PuzzlePage()));
}

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({Key? key}) : super(key: key);

  @override
  _PuzzlePageState createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
