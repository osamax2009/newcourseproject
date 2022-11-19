


import 'package:flutter/material.dart';
import 'package:untitled2/Controller/Services.dart';

import '../Wrapper.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  Services services = Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignInScreen"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  services.setToken();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Wrapper())
                  );

            }, child: Text("Login..."))
          ],
        ),
      ),
    );
  }
}
