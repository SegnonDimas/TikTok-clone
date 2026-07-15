
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  List<Widget> discussions =  [
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),
    Container(
      height: 70,
      width: 400,
      color: Colors.blue,
    ),
    SizedBox(height: 10,),



  ];
  List<Widget> profils = [
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),
    SizedBox(width: 10,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: profils,
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Column(
                children: discussions,
              ),
            ),
          ],
        ),
      )

    );
  }
}