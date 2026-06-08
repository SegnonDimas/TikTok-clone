import 'package:flutter/material.dart';

// classe Home : page d'accueil de l'application, qui est un widget stateful

class Home extends StatefulWidget {
  const Home({super.key,});


  @override
  State<Home> createState() => _HomeState();
}


// classe _HomeState : état de Home, qui contient la logique de l'interface utilisateur
class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      // APPBAR
      appBar: AppBar(
       leading: Icon(Icons.live_tv, size: 40,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Explore",  style: TextStyle(fontSize: 20)),
            SizedBox(width: 10,),
            Text("Following",  style: TextStyle(fontSize: 20)),
            SizedBox(width: 10,),
            Text("For you", style: TextStyle(fontSize: 20))
          ],
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.search, size: 40,)
        ],
      ),

      //BODY
      body: Center(
        child: Text.rich(
          TextSpan(
            text: "Google Play ",
            children: [
              TextSpan(
                text: "Console ",
                style: TextStyle(
                  color: Colors.blue,
                ),

              ),
              TextSpan(
                text: "Your ",
                style: TextStyle(
                  color: Colors.black,
                ),

              ),
              TextSpan(
                text: "Developer Console",
                style: TextStyle(
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold
                ),

              ),

            ]
          )
        ),
      ),

      // FLOATINGACTIONBUTTON
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,

          // fonction onPressed
          onPressed: (){
            print("🎷Go to original sound");

            // afficher BottomSheet
            showModalBottomSheet(
                context: context,
                showDragHandle: false,
                enableDrag: true,
                constraints: BoxConstraints(
                  maxHeight: 800,
                  minHeight: 200
                ),

                isScrollControlled: true,
                builder: (context){

              return Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    //borderRadius: BorderRadius.circular(20)
                ),
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    Text("512 comments")
                  ],
                ),
              );
            });
          },

          // child : Widget
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.add, color: Colors.black,),
          )),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,



    );
  }
}
