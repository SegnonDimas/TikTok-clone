import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Widget> posts =  [
    Stack(
      children: [
        Image.network(
            height: 170,
            width: 120,
            fit: BoxFit.cover,
            "https://assets.goal.com/images/v3/blt337ee8504da6e5a0/cm%20grafica%20cristiano%20ronaldo%20messi%202026%2016%209.jpg?auto=webp&format=pjpg&width=3840&quality=60"),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              color: Colors.pink,
              child: Text("Pinned", style: TextStyle(color: Colors.white),)),
        ),

        Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: [
                Icon(Icons.play_arrow_outlined, color: Colors.white,),
                Text("2.1M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ))
      ],
    ),
    Stack(
      children: [
        Image.network(
            height: 170,
            width: 120,
            fit: BoxFit.cover,
            "https://assets.goal.com/images/v3/blt337ee8504da6e5a0/cm%20grafica%20cristiano%20ronaldo%20messi%202026%2016%209.jpg?auto=webp&format=pjpg&width=3840&quality=60"),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              color: Colors.pink,
              child: Text("Pinned", style: TextStyle(color: Colors.white),)),
        ),

        Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: [
                Icon(Icons.play_arrow_outlined, color: Colors.white,),
                Text("2.1M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ))
      ],
    ),
    Stack(
      children: [
        Image.network(
            height: 170,
            width: 120,
            fit: BoxFit.cover,
            "https://assets.goal.com/images/v3/blt337ee8504da6e5a0/cm%20grafica%20cristiano%20ronaldo%20messi%202026%2016%209.jpg?auto=webp&format=pjpg&width=3840&quality=60"),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              color: Colors.pink,
              child: Text("Pinned", style: TextStyle(color: Colors.white),)),
        ),

        Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: [
                Icon(Icons.play_arrow_outlined, color: Colors.white,),
                Text("2.1M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ))
      ],
    ),
    Stack(
      children: [
        Image.network(
            height: 170,
            width: 120,
            fit: BoxFit.cover,
            "https://assets.goal.com/images/v3/blt337ee8504da6e5a0/cm%20grafica%20cristiano%20ronaldo%20messi%202026%2016%209.jpg?auto=webp&format=pjpg&width=3840&quality=60"),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              color: Colors.pink,
              child: Text("Pinned", style: TextStyle(color: Colors.white),)),
        ),

        Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: [
                Icon(Icons.play_arrow_outlined, color: Colors.white,),
                Text("2.1M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ))
      ],
    ),
    Stack(
      children: [
        Image.network(
            height: 170,
            width: 120,
            fit: BoxFit.cover,
            "https://assets.goal.com/images/v3/blt337ee8504da6e5a0/cm%20grafica%20cristiano%20ronaldo%20messi%202026%2016%209.jpg?auto=webp&format=pjpg&width=3840&quality=60"),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
              color: Colors.pink,
              child: Text("Pinned", style: TextStyle(color: Colors.white),)),
        ),

        Positioned(
            bottom: 5,
            left: 5,
            child: Row(
              children: [
                Icon(Icons.play_arrow_outlined, color: Colors.white,),
                Text("2.1M", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ))
      ],
    ),

  ];

  @override
  Widget build(BuildContext context) {
    bool ios = Platform.isIOS;
    return Scaffold(
      backgroundColor: Colors.white,
      // AppBar
      appBar: AppBar(
        title: Text(ios?"iOS user" : "Android user"),
        centerTitle: false,
        // leading
        //leading: Icon(Icons.person_add_outlined, size: 30,),
        /*actions: [
          Icon(Icons.visibility),
          SizedBox(width: 10,),
          Icon(Icons.share),
          SizedBox(width: 10,),
          Icon(Icons.menu),
          SizedBox(width: 10,),
        ],*/
      ),

      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // photo de profil
            SizedBox(
              height: 150, width: 150,
                child: Stack(
                  children: [
                    Image.network("https://media.istockphoto.com/id/1446465647/fr/vectoriel/avatar-portrait-dun-jeune-gar%C3%A7on-caucasien-homme-en-rond-cadre-illustration-vectorielle.jpg?s=612x612&w=0&k=20&c=ABO-hml56eP4dkThhoVExlI-ymBRidU-AtvPdOZG-mU="),
                    Positioned(
                      bottom: 25,
                      right: 20,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3)
                        ),
                      ),
                    )
                  ],
                )
                ,),

            // quelques actions
            Row
              (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("+ Add name"),
                SizedBox(width: 10,),
                Text("Edit")
              ],
            ),
            SizedBox(height: 10,),

            // nom d'utilsateur
            Text("@dimassegnon"),
            SizedBox(height: 20,),

            // les catégories-infos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: (){
                    print("Users you follow");
                  },
                    child : Text("Following"),
                ),TextButton(
                  onPressed: (){
                    print("Your followers");
                  },
                    child : Text("Followers"),
                ),TextButton(
                  onPressed: (){
                    print("Your videos likes count");
                  },
                    child : Text("Likes"),
                ),

              ],
            ),
            SizedBox(height: 50,),

            //liste des posts
            Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: posts,
              ),
            ),

            SizedBox(width: 10,),
            /*
            CircularProgressIndicator(),
            Visibility(
                visible: true,
                child: CupertinoActivityIndicator(radius: 40,)),
            */
           ios
               ?CupertinoActivityIndicator()
               :CircularProgressIndicator(),

            Text("Chargement des vidéos en cours ...")

            ],
        ),
      ),

      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),

            Text("Assets"),
            SizedBox(height: 100,),
            Divider(),

            Text("Personal tools"),
            SizedBox(height: 100,),
            Divider(),
            SizedBox(height: 100,),
            Text("Creation & business tools")
          ],
        ),
      ),





      // Body
    );
  }
}