import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.network(
            "https://img.magnific.com/vecteurs-libre/banniere-tiktok-eclaboussures-aquarelle_69286-194.jpg?semt=ais_hybrid&w=740&q=80",
                ),
        ),),
    );
  }
}