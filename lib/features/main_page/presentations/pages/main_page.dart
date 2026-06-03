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

        // BottomNavigationBar
      bottomNavigationBar:

     BottomNavigationBar(
          currentIndex: _currentIndex,
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
