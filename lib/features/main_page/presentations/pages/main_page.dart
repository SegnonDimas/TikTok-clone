import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.black,

        // NavigationBar
      bottomNavigationBar:

     NavigationBar(
          /*currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedLabelStyle: TextStyle(color: Colors.white),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 18,
*/
       selectedIndex: _currentIndex,
          // destinations
          destinations: [
           // home
            NavigationDestination(
              icon: Icon(Icons.home),
              label : "Home" ,
            ),

            // friends
            NavigationDestination(
              icon: Icon(Icons.people),
              label : "Friends",
              ),

            // create post
            /*BottomNavigationBarItem(icon: Container(
                color: Colors.white,

                child: Image.asset("lib/add_post.png", )), label : "" , backgroundColor: Colors.black,),
            */
            // inbox
            NavigationDestination(
              icon: Icon(Icons.wechat),
              label : "Inbox" ,
             ),

            // profile
            NavigationDestination(
              icon: Icon(Icons.person),
              label : "Profile" ,
              ),
          ],

          // onDestinationSelected
          onDestinationSelected: (index){
            _currentIndex=index;
            setState(() {
             });
            print("❤️‍🔥index du clique : $index");
            print("❤️‍🔥currentIndex : $_currentIndex");
    },

      ),
    );
  }
}
