import 'package:flutter/material.dart';

class SenderChatColorProvider with ChangeNotifier {
  // attribut
  Color senderChatColor = Color.fromARGB(255, 4, 88, 45);

  //methodes

  // méthode pour changer la couleur du chat
  void changeSenderChatColor(Color newColor) {
    senderChatColor = newColor;
    notifyListeners(); //notifier tous les widgets qui écoutent ce provider (SenderChat
  }
}
