import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackApp(),
    );
  }
}

class StackApp extends StatefulWidget {
  const StackApp({Key? key}) : super(key: key);

  @override
  _StackAppState createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          blueBox,
          Positioned(top: 20, left: 20, child: moon),
          Positioned(top: 40, left: 55, child: innerMoon),
          Positioned(right: 110, top: 70, child: star)
        ],
      ),
    );
  }
}

Widget blueBox = Container(
  height: 200,
  width: 300,
  color: Colors.red,
);

Widget moon = const Icon(
  Icons.fiber_manual_record,
  color: Colors.white,
  size: 150,
);

Widget innerMoon = const Icon(
  Icons.fiber_manual_record,
  color: Colors.red,
  size: 110,
);
Widget star = const Icon(
  Icons.star,
  size: 50,
  color: Colors.white,
);
