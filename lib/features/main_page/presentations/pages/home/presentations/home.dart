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

  late bool checkBoxValue;
  bool passWordVisible = false;
  TextEditingController pwdController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Key emailKey = Key('');

  @override
  void initState() {
    // TODO: implement initState
    checkBoxValue = false;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      // APPBAR
      appBar: AppBar(
       leading: IconButton(
           onPressed: (){
             print('Live lancé');
           }, icon: Icon(Icons.live_tv_outlined, size: 40,),
       selectedIcon: Icon(Icons.live_help),
         isSelected: false,
       ),
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
          IconButton(onPressed: (){
            print("🔍Recherche");
          }, icon: Icon(Icons.search, size: 40,))
        ],
      ),

      //BODY
      body: Center(
        child:SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMPyJpMwepfZZAljr2qcqNdwAnnngXQYCFoTNdl_l7vrpB1E9_SBcpZJc&s=10",
                fit: BoxFit.contain, // l'image prend soit toute la largeur, soit toute la hauteur
                //fit: BoxFit.fitHeight, //l'image prend toute la hauteur définie
                //fit: BoxFit.fitWidth, //l'image prend toute la largeur définie
                //fit: BoxFit.fill, // l'image prend toute la largeur et la hauteur définies en affichant toute l'image
                //fit: BoxFit.cover, // l'image prend toute la largeur et la hauteur définies et peut ne pas afficher toute l'image
              ),
          


          
            ],
          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Lottie.asset("assets/lotties/Welcome.json", width: 150),
                    TextField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        color: Colors.blue
                      ),

                    ),
                    SizedBox(height: 10,)
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
  
  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
    }

  
}

extension on Key {
  get currentState => null;
}
