

import 'package:flutter/material.dart';
import 'package:untitled2/Components/DefaultButton.dart';
import 'package:untitled2/Constants.dart';
import 'package:untitled2/Views/ShoppingScreen.dart';


class SplashScreen extends StatefulWidget {
  //const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _pageState = 0 ;

  @override
  Widget build(BuildContext context) {

 var   windowHeight = MediaQuery.of(context).size.height ;
 var   windowHeight2 = MediaQuery.of(context).size.height ;
 Color  firstColor  = Colors.white ;
 Color  secondColor  = Colors.blue ;


    switch(_pageState) {
      case 0 :
        windowHeight = MediaQuery.of(context).size.height  ;
        windowHeight2 = MediaQuery.of(context).size.height ;
        firstColor  = Colors.white ;
        break;
      case 1 :
        windowHeight = MediaQuery.of(context).size.height -700 ;
        windowHeight2 = MediaQuery.of(context).size.height ;
        firstColor = Colors.yellow ;

        break;
      case 2 :
        windowHeight = MediaQuery.of(context).size.height -700 ;
        windowHeight2 = MediaQuery.of(context).size.height - 500 ;
        firstColor = Colors.yellow ;
          secondColor  = Colors.blue ;

        break;
    }


    return Scaffold(
        body:
        SafeArea(
          child: Stack(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    _pageState = 0 ;
                  });
                },
                child: AnimatedContainer(
                  curve: Curves.decelerate,
                  duration: Duration(milliseconds: 500),
                  color: firstColor,
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
                                    setState(() {
                                      _pageState = 1;
                                    });
                        },
                        myText: "Continue",
                        myColor: Colors.orange,
                      ),

                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                decoration: BoxDecoration(
                    color: secondColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )
                ),
                curve: Curves.decelerate,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(0,
                    windowHeight
                    , 1) ,
            //    height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    DefaultButton(
                      press: (){
                        setState(() {
                          _pageState = 2 ;
                        });
                      },
                      myText: "Back to login...",
                      myColor: Colors.purple,
                    ),
                    DefaultButton(
                      press: (){},
                      myText: "Register",
                      myColor: Colors.purple,
                    )
                  ],
                ),
              ), /// for register
              AnimatedContainer(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    )
                ),
                curve: Curves.decelerate,
                duration: Duration(milliseconds: 500),
                transform: Matrix4.translationValues(0,
                    windowHeight2
                    , 1) ,
                //    height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    DefaultButton(
                      press: (){},
                      myText: "Back to login...",
                      myColor: Colors.purple,
                    ),
                    DefaultButton(
                      press: (){},
                      myText: "Register",
                      myColor: Colors.purple,
                    )
                  ],
                ),
              ) /// for login
            ],
          ),
        ),
    );
  }
}









