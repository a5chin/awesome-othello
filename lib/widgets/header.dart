import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double height;
  final double width;

  Header(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 10,
      width: width,
      decoration: const BoxDecoration(
        color: Colors.indigo,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text('New Game'),
                  ),
                )),
            Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text('Turn'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ))
          ]),
    );
  }
}
