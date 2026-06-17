import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            Text("Explore",  style: TextStyle(fontSize: 17)),
            SizedBox(width: 10,),
            Text("Following",  style: TextStyle(fontSize: 17)),
            SizedBox(width: 10,),
            Text("For you", style: TextStyle(fontSize: 17))
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
          children: [
            Image.asset("assets/images/tik.png",
              fit: BoxFit.contain, // l'image prend soit toute la largeur, soit toute la hauteur
              //fit: BoxFit.fitHeight, //l'image prend toute la hauteur définie
              //fit: BoxFit.fitWidth, //l'image prend toute la largeur définie
              //fit: BoxFit.fill, // l'image prend toute la largeur et la hauteur définies en affichant toute l'image
              //fit: BoxFit.cover, // l'image prend toute la largeur et la hauteur définies et peut ne pas afficher toute l'image
            ),

            ElevatedButton(
                onPressed: (){
                  print("📱Mode plein écran activé");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,

                ),
                child: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      Icon(Icons.smartphone),
                      Text("Full screen"),
                    ],
                  ),
                ))
          ],
        )
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
                    Lottie.asset("assets/lotties/Welcome.json")
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
