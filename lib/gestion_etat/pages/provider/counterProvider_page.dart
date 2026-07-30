import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/gestion_etat/providers/counter_provider.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("J'ai reconstruit build() ✅");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF03A63D),
        title: const Text('Counter Provider Page'),
        actions: [
          Text(
            "$counter",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),

      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            print("J'ai reconstruit Text() ✅");
            return Text(
              "${counterProvider.counter}",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            );
          },
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrementer();
            },
            child: Icon(Icons.minimize),
          ),

          FloatingActionButton(
            onPressed: () {
              Provider.of<CounterProvider>(
                context,
                listen: false,
              ).incrementer();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
