import 'package:flutter/material.dart';
import 'package:untitled2/Components/DefaultButton.dart';
import 'package:untitled2/Views/ShoppingScreen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultButton(
                  press:  (){
                    Navigator.pushNamed(  context, ShoppingScreen.routeName);
                  },
                  myText: "Continue",
                  myColor: Colors.orange,
                ),

              ],
            ),
          ),
        ),
    );
  }
}









