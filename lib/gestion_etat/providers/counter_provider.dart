import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  //attributs
  int _counter = 0;

  int get counter =>
      _counter; // getter pour récupérer la valeur de l'attribut privé _counter

  //methodes

  //incrementer : augmenter la valeur de counter de 1
  void incrementer() {
    _counter = _counter + 1; // _counter++;
    notifyListeners(); //notifier tous les widgets qui écoutent ce provider (CounterProvider)
  }

  void decrementer() {
    _counter = _counter - 1; // _counter--;
    notifyListeners(); //notifier tous les widgets qui écoutent ce provider (CounterProvider)
  }
}
