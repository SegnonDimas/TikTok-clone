import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/bubbles/bubble_normal_audio.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class WhatsappThemeSimulationPage extends StatefulWidget {
  const WhatsappThemeSimulationPage({super.key});

  @override
  State<WhatsappThemeSimulationPage> createState() =>
      _WhatsappThemeSimulationPageState();
}

class _WhatsappThemeSimulationPageState
    extends State<WhatsappThemeSimulationPage> {
  //les variables avec état
  Color senderChatColor = Color.fromARGB(255, 137, 64, 15);
  Color receiverChatColor = Color.fromARGB(255, 59, 64, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF03A63D),
        title: const Text('Whatsapp Theme'),
      ),
      body: Column(
        children: [
          BubbleNormal(
            text: 'Yo bro, how doing ?',
            isSender: true,
            color: senderChatColor,
            tail: true,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),

          BubbleNormal(
            text: 'Yo bro, how doing ?',
            isSender: false,
            color: receiverChatColor,
            tail: true,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),

          BubbleNormal(
            text: 'Yo I am fine, and you ?',
            isSender: true,
            isEdited: true,
            timestamp: '12:00',
            color: senderChatColor,
            tail: true,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
          BubbleNormal(
            text: 'Great 👊',
            isSender: false,
            color: receiverChatColor,
            tail: true,
            textStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),

          BubbleNormalAudio(
            color: senderChatColor,
            duration: 10.toDouble(),
            position: 7.toDouble(),
            isPlaying: true,
            isLoading: false,
            isPause: true,
            onSeekChanged: (d) {},
            onPlayPauseButtonClick: () {},
            sent: true,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = Colors.red;
                          });
                          Navigator.pop(
                            context,
                          ); // pour fermer le bottomsheet après la sélection de la couleur
                        },
                        child: Icon(Icons.circle, color: Colors.red, size: 70),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = Colors.green;
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = Colors.blue;
                          });
                        },
                        child: Icon(Icons.circle, color: Colors.blue, size: 70),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              166,
                              243,
                              33,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 166, 243, 33),
                          size: 70,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              61,
                              7,
                              3,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 61, 7, 3),
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              4,
                              68,
                              6,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 4, 68, 6),
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              31,
                              68,
                              99,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 31, 68, 99),
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              243,
                              156,
                              33,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 243, 156, 33),
                          size: 70,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.circle,
                        color: const Color.fromARGB(255, 148, 15, 6),
                        size: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              85,
                              129,
                              87,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 85, 129, 87),
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              70,
                              107,
                              137,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 70, 107, 137),
                          size: 70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            senderChatColor = const Color.fromARGB(
                              255,
                              71,
                              83,
                              49,
                            );
                          });
                        },
                        child: Icon(
                          Icons.circle,
                          color: const Color.fromARGB(255, 71, 83, 49),
                          size: 70,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: senderChatColor,
      ),
    );
  }
}
