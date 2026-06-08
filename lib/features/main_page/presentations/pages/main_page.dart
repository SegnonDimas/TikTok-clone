import 'package:flutter/material.dart';
import 'package:tiktok/features/main_page/presentations/pages/profile/presentation/pages/profile_page.dart';
import 'friends/presentations/pages/friends.dart';
import 'home/presentations/home.dart';
import 'inbox/presentations/pages/inbox.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List des pages à afficher dans le body
  List<Widget> pages = [
    Home(),
    Friends(),
    Inbox(),
    Profile(),
  ];

  // index de la page currante
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

        // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedLabelStyle: TextStyle(color: Colors.white),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 18,

          // items
          items: [
           // home
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label : "Home" ,
              backgroundColor: Colors.black,
            ),

            // friends
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label : "Friends",
              backgroundColor: Colors.black, ),

            // create post
            /*BottomNavigationBarItem(icon: Container(
                color: Colors.white,

                child: Image.asset("lib/add_post.png", )), label : "" , backgroundColor: Colors.black,),
            */
            // inbox
            BottomNavigationBarItem(
              icon: Icon(Icons.wechat),
              label : "Inbox" ,
              backgroundColor: Colors.black,),

            // profile
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label : "Profile" ,
              backgroundColor: Colors.black,),
          ],

          // onTap
          onTap: (index){
            currentIndex = index;
            setState(() {}); // pour raffrachir automatiquement l'affichage de l'écran de l'app.
            print("❤️‍🔥index du clique : $index");
            print("❤️‍🔥currentIndex du clique : $currentIndex");
    },

      ),
    );
  }
}
