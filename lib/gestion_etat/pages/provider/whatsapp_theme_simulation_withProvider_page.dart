import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/bubbles/bubble_normal_audio.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chat_bubbles/date_chips/date_chip.dart';
import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/gestion_etat/providers/senderChatColorProvider.dart';

class WhatsappThemeSimulationWithProviderPage extends StatefulWidget {
  const WhatsappThemeSimulationWithProviderPage({super.key});

  @override
  State<WhatsappThemeSimulationWithProviderPage> createState() =>
      _WhatsappThemeSimulationWithProviderPageState();
}

class _WhatsappThemeSimulationWithProviderPageState
    extends State<WhatsappThemeSimulationWithProviderPage> {
  //les variables avec état
  Color senderChatColor = Color.fromARGB(255, 137, 64, 15);
  Color receiverChatColor = Color.fromARGB(255, 59, 64, 60);

  @override
  Widget build(BuildContext context) {
    return Consumer<SenderChatColorProvider>(
      builder: (context, senderChatColorProvider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: senderChatColorProvider.senderChatColor,
            title: const Text('Whatsapp Theme with Provider'),
          ),
          body: Column(
            children: [
              // sender
              BubbleNormal(
                text: 'Yo bro, how doing ?',
                isSender: true,
                color: senderChatColorProvider.senderChatColor,
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

              // sender
              BubbleNormal(
                text: 'Yo I am fine, and you ?',
                isSender: true,
                isEdited: true,
                timestamp: '12:00',
                color: senderChatColorProvider.senderChatColor,
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

              DateChip(
                date: new DateTime(2026, 5, 7),
                color: Color(0x558AD3D5),
              ),

              // sender
              BubbleNormalAudio(
                color: senderChatColorProvider.senderChatColor,
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
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(Colors.red);
                            },
                            child: Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(Colors.green);
                            },
                            child: Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(Colors.blue);
                            },
                            child: Icon(
                              Icons.circle,
                              color: Colors.blue,
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 166, 243, 33),
                                  );
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
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 61, 7, 3),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 61, 7, 3),
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 4, 68, 6),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 4, 68, 6),
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 31, 68, 99),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 31, 68, 99),
                              size: 70,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 243, 156, 33),
                                  );
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
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 148, 15, 6),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 148, 15, 6),
                              size: 70,
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 85, 129, 87),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 85, 129, 87),
                              size: 70,
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 70, 107, 137),
                                  );
                            },
                            child: Icon(
                              Icons.circle,
                              color: const Color.fromARGB(255, 70, 107, 137),
                              size: 70,
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              context
                                  .read<SenderChatColorProvider>()
                                  .changeSenderChatColor(
                                    Color.fromARGB(255, 71, 83, 49),
                                  );
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
            backgroundColor: senderChatColorProvider.senderChatColor,
          ),
        );
      },
    );
  }
}
