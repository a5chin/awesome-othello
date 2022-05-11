import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  final double side;

  Board(this.side);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: side,
      width: side,
      decoration: const BoxDecoration(
        color: Colors.green,
      ),
    ));
  }
}
