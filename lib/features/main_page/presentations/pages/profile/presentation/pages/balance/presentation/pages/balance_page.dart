import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text('Balance page'),
            TextButton(onPressed: (){
              //revenir sur la page précédente
              Navigator.pop(context);
            }, child: Text('Retour sur la page précédente'))


          ],
        ),
      ),
    );
  }
}