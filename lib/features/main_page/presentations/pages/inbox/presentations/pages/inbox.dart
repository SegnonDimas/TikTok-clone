
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}



class _InboxState extends State<Inbox> {


  List users = [];

  List pictures = [];

  String randomUserPicture = "https://randomuser.me/api/portraits/men/1.jpg";

//get random users
  Future<List> getUsersPictures([int usersCount = 5])async {
    final url = Uri.parse("https://randomuser.me/api/?results=$usersCount");
    final response = await http.get(url);

    print(response.statusCode);

    if(response.statusCode==200){
      final data = jsonDecode(response.body);
      print(data["results"]);

      return data["results"];
    }
    return [];

  }





  Future<List> getUsers()async {
    final usersCollection = "/users";
    final url=Uri.parse("https://jsonplaceholder.typicode.com$usersCollection");

    final response = await http.get(url);
    if(response.statusCode==200){
      final usersList = jsonDecode(response.body);
      print(response.body);
      return usersList;
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inbox"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        actions: [
          IconButton(
              onPressed: () async{
                print("🛑✅🔥");
                //await getUsers();
                setState(() async {
                  users = await getUsers();
                  pictures = await getUsersPictures(10);
                });
              }, 
              icon: Icon(Icons.refresh, color: Colors.white,))
        ],
      ),
      body: Center(
        child: Column(

          children: [
            // profils
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: pictures.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(pictures[index]["picture"]["medium"]),
                      ));
                },
              ),
            ),

            // espace
            SizedBox(height: 20,),

            // discussions
            Expanded(
              child: ListView.separated(
                // l'afficheur de chaque élément
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue.withOpacity(0.5),
                      child: Text(users[index]["name"][0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                    title: Text(users[index]["name"], style: TextStyle( fontWeight: FontWeight.bold),
                  ),
                    subtitle: Text(users[index]["company"]["catchPhrase"]),
                  );
                },

                // le séparateur entre les éléments
                separatorBuilder: (context, index){
                  return SizedBox(height: 10,);
                },

                // la taille de la liste des éléments
                itemCount: users.length,

              ),
            ),
          ],
        ),
      )

    );
  }
}