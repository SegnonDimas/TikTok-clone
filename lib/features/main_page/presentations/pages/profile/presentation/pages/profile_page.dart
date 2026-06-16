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
      backgroundColor: Colors.white,
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
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 150, width: 150,
                child: Image.network("https://media.istockphoto.com/id/1446465647/fr/vectoriel/avatar-portrait-dun-jeune-gar%C3%A7on-caucasien-homme-en-rond-cadre-illustration-vectorielle.jpg?s=612x612&w=0&k=20&c=ABO-hml56eP4dkThhoVExlI-ymBRidU-AtvPdOZG-mU=")
                ,),
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
            Text("@dimassegnon"),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Following"),
                Text("Followers"),
                Text("Likes")
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage("https://media.gqmagazine.fr/photos/5e301d9bd6a04300082cc271/4:3/w_5120,h_3840,c_limit/P90233585_highRes_the-bmw-m3-e30-09-20.jpg"),),
                ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.network("https://media.istockphoto.com/id/2176502674/fr/photo/mercedes-benz-amg-gt-2018-voiture-de-sport-vue-dangle.jpg?s=612x612&w=0&k=20&c=hnt7YVzZAnLGWgN4gVTw_ds9tTGNtOL00YviU7ENdKA=",
                        fit: BoxFit.cover,
                        ))),
              ],
            )
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