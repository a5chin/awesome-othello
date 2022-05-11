import 'package:flutter/material.dart';

import 'package:othello/widgets/header.dart';
import 'package:othello/widgets/board.dart';

void main() {
  runApp(const Othello());
}

class Othello extends StatelessWidget {
  const Othello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Othello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Screen(title: 'Othello'),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: <Widget>[
        Header(size.height, size.width),
        Board(size.height < size.width ? size.height : size.width),
      ],
    ));
  }
}
