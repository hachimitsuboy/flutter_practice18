import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final imageArray = [
    "https://off.tokyo/wp-content/uploads/2021/09/60bb4a2e143f632da3e56aea_Flutter-app-development-2.png",
    "https://naokeyzmt.com/rogue/wp-content/themes/rogue/assets/images/articles/skillup/2021/flutter/may/22/skillup-flutter-beginwindows.jpg",
    "https://hnavi.co.jp/wp-content/uploads/2021/07/210803flutter-description-640x320.jpg",
  ];
  var index = 0;
  var rand = math.Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dev Tools'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('buttonA')),
              ElevatedButton(onPressed: () {}, child: const Text('buttonB')),
              ElevatedButton(onPressed: () {}, child: const Text('buttonC')),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.access_alarms)),
              ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.account_circle_rounded)),
            ],
          ),
          Image.network(
            imageArray[index],
            height: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Dev Toolsの練習',
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 180,
              color: Colors.cyanAccent,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            print(index);
            index = rand.nextInt(3);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
