import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                CardContainer(),
                CardContainer(),
                CardContainer(),
              ],
            ),
          )),
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColoredContainer(
                  cor: Colors.green,
                ),
                ColoredContainer(
                  cor: Colors.yellow,
                ),
                ColoredContainer(
                  cor: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      margin: EdgeInsets.only(top: 40),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  final Color cor;

  ColoredContainer({Key key, this.cor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      width: 50,
      height: 50,
    );
  }
}
