

import 'package:flutter/material.dart';
import 'package:untitled2/Components/DefaultButton.dart';
import 'package:untitled2/Constants.dart';
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
            //  mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(" Shopping App",
                  style: TextStyle(
                    fontSize: 30
                  ),

                ),
                SizedBox(height: 20,) ,
                Text("shopping app  for \n new products, use my New Shopping app",
                textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20
                  ),

                ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: kPrimaryColor
                  ),
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Image(image:
                AssetImage("assets/images/splash_1.png")
                ),
              ),


              Spacer(),

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









