import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.access_alarms)),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.account_circle_rounded)),
            ],
          ),
          Image.network(
            'https://2.bp.blogspot.com/-Gp2_6OZJ1FQ/XASwZmJF9yI/AAAAAAABQZ0/C8dUDl0e_uEWbDjvwNAo8DArlJX4vIaFwCLcBGAs/s180-c/computer_programming_man.png',
            height: 200,
          ),

          const SizedBox(
            height: 30,
          ),
          const Text(
            'Dev Toolsの練習',
          ),
          Container(
            height: 180,
            color: Colors.cyanAccent,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
