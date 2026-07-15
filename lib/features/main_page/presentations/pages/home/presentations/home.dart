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

  bool checkBoxValue = false;
  bool passWordVisible = false;
  TextEditingController pwdController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Key emailKey = Key('');

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
                  )),
          
          
              Form(
                child: Column(
                children: [
                  // email
                  TextFormField(
                    key: emailKey,
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    maxLength: 100,
                    style: TextStyle(
                        color: Colors.red
                    ),
          
                    validator: (email){
                      if(emailController.text.isEmpty){
                        return "Veuillez entrer votre email svp";
                      } else if(emailController.text.contains('@')==false){
                        return "Veuillez entrer un email valide";
                      } else {
                        return null;
                      }
          
          
          
                    },
          
                    onEditingComplete: (){
                      if(emailKey.currentState?.validate()){
                        print("✅Email valide");
                      } else {
                        print("❌Email invalide");
                      }
                    },
          
          
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        fillColor: Colors.grey[300],
                        filled: true,
          
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
          
          
                        ),
                        label: Text("Email"),
                        hintText: "user@gmail.com"
                    ),
          
                    textInputAction: TextInputAction.done,
          
                  ),
          
                  // password
                  TextFormField(
                    controller: pwdController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: passWordVisible,
                    maxLength: 100,
                    style: TextStyle(
                        color: Colors.red
                    ),
          
          
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: passWordVisible==true? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                          onPressed: (){
                            setState(() {});
                            passWordVisible = !passWordVisible;
                          },
                        ),
                        fillColor: Colors.grey[300],
                        filled: true,
          
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
          
          
                        ),
                        label: Text("PassWord"),
                        hintText: "••••••••"
                    ),
          
                  ),
                ],
          
              ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    Checkbox(
                      value: checkBoxValue,
                      onChanged: (bool){
                        setState(() {});
                        checkBoxValue = !checkBoxValue;
                      },
                      activeColor: Colors.red,
                      checkColor: Colors.black,
                    ),
                    Container(
                        height: 100,
                        width : 200,
                        color : Colors.red
                    ),
                
                    Container(
                        height: 100,
                        width : 200,
                        color : Colors.green
                    )
                  ],
                ),
              ),
          
              Image.asset("assets/images/tik.png",
                fit: BoxFit.contain, // l'image prend soit toute la largeur, soit toute la hauteur
                //fit: BoxFit.fitHeight, //l'image prend toute la hauteur définie
                //fit: BoxFit.fitWidth, //l'image prend toute la largeur définie
                //fit: BoxFit.fill, // l'image prend toute la largeur et la hauteur définies en affichant toute l'image
                //fit: BoxFit.cover, // l'image prend toute la largeur et la hauteur définies et peut ne pas afficher toute l'image
              ),
          
              Container(
                height: 100,
                width : 200,
                color : Colors.red
              )
          
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

  
}

extension on Key {
  get currentState => null;
}
