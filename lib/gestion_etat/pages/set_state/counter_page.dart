import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    print("J'ai reconstruit buuild() ✅");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF03A63D),
        title: const Text('Counter Page'),
        actions: [
        Text("$counter", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    ],
      ),

      body: Center(
      child: Text("$counter", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green),),),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Rouge", style: TextStyle(color: Colors.red),),
          Text("Vert", style: TextStyle(color: Color(0xFF03A63D)),),
          Text("Bleu", style: TextStyle(color: Colors.blue),),
          Text("Orange", style: TextStyle(color: Colors.orange),),
          Text("Jaune", style: TextStyle(color: Colors.yellow),),
          Text("Noir", style: TextStyle(color: Colors.black),),
        ],
      ),
    );
  }
}