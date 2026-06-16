import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 100, width: 300, color: Colors.red,),
            Container(height: 100, width: 220, color: Colors.green,),
            Container(height: 100, width: 150, color: Colors.blue,),
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