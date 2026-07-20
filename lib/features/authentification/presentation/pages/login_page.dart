import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/features/main_page/presentations/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Icon(Icons.account_circle, size: 100,),

            Text('Login Page'),
            TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder:(context)=>MainPage()
              ),
                  (route)=>false
              );
            }, child: Text('Login'))


          ],
        ),
      ),
    );
  }
}