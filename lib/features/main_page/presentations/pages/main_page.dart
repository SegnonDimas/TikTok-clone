import 'package:flutter/material.dart';
import 'package:tiktok/features/main_page/presentations/pages/create_post/presentations/pages/create_post.dart';
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
    CreatePost(),
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
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        selectedIndex: currentIndex,
        labelTextStyle: WidgetStateProperty.all(
          TextStyle(fontSize: 12, color: Colors.white)
        ),

        backgroundColor: Colors.black,

          // items
          destinations: [
           // home
            NavigationDestination(
              icon: Icon(Icons.home),
              label : "Home" ,
              selectedIcon: Icon(Icons.home, color: Colors.white),
            ),

            // friends
            NavigationDestination(
              icon: Icon(Icons.people),
              label : "Friends" ,
              selectedIcon: Icon(Icons.people, color: Colors.white),
            ),

            // create post
            NavigationDestination(
              icon: Image.asset("assets/images/add_post.png"),
              label : "" ,
            ),

            // inbox
            NavigationDestination(
              icon: Icon(Icons.wechat),
              label : "Inbox" ,
              selectedIcon: Icon(Icons.wechat, color: Colors.white),
            ),

            // profile
            NavigationDestination(
              icon: Icon(Icons.person),
              label : "Profile" ,
              selectedIcon: Icon(Icons.person, color: Colors.white),
            ),
          ],

          // onTap
          onDestinationSelected: (index){
            currentIndex = index;
            setState(() {}); // pour raffrachir automatiquement l'affichage de l'écran de l'app.
            print("❤️‍🔥index du clique : $index");
            print("❤️‍🔥currentIndex du clique : $currentIndex");
    },

      ),
    );
  }
}
