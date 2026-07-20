import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Icon(Icons.person_add, size: 100,),
            Text('Sign up Page'),
            TextButton(
                onPressed: (){
              Navigator.pushNamed(
                context,
                '/login');
            }, child: Text('Sign up'))


          ],
        ),
      ),
    );
  }
}