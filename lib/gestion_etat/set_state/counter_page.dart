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
        backgroundColor: Colors.blue,
        title: const Text('Counter Page'),
        actions: [
        Text("$counter", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    ],
      ),

      body: Center(
      child: Text("$counter", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                 counter = counter + 1;
              });
            },
          child: const Icon(Icons.add),),
          FloatingActionButton(
            onPressed: (){
              setState(() {});
              counter = counter - 1;

            },
            child: const Icon(Icons.minimize),),
        ],
      ),
    );
  }
}