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
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Container(
              alignment: .topEnd,
              height: 100,
              width : 200,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.black, width: 4,),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text("Hello, I'm Farouk", style: TextStyle(fontSize: 22),),
            ),

            Container(
              alignment: .topEnd,
              height: 100,
              width : 200,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 4,),
              ),
              ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: .center,
                padding: EdgeInsets.all(20),
                height: 100,
                width : 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomRight: .circular(20))
                ),
                child: Container(
                  alignment: .topEnd,
                  padding: EdgeInsets.all(20),
                  height: 90,
                  width : 190,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, -5), // définir le positionnement de l'ombre
                        blurRadius: 10, // définit la taille de la brouille
                      )
                    ]
                  ),
                   ),),
            ),

            Container(
              alignment: .topEnd,
              height: 100,
              width : 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green.shade900,
                  Colors.green.shade400,
                  Colors.green.shade50
                ])
              ),
              child: Text("Hello, I'm Farouk", style: TextStyle(fontSize: 22),),
            ),
          ],
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
