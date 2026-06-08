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
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2)
          ),
            height: 200,
            width: 400,
            child: Text("Vous avez effectué la première étape de la publication de votre appli sur Google Play pour des milliards d'utilisateurs. Dès maintenant, vous pouvez commencer à effectuer des tests internes. Pour la mettre à disposition de tous, vous devez terminer de la configurer, effectuer un test fermé et demander un accès en production.",
              //maxLines: 2,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            )),
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
