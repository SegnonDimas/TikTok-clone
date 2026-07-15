
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
      backgroundColor: Colors.red,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
    ),

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
          physics: ClampingScrollPhysics(),
          children: [
            // profils
            SizedBox(
              height: 120,
              child: ListView.builder(
                reverse: true,
                itemCount: profils.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: profils[index]);
                },
              ),
            ),

            // espace
            SizedBox(height: 20,),

            // discussions
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