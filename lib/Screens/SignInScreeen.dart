import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/Controller/Services.dart';
import 'package:untitled2/Screens/%D9%8DSplashScreen.dart';
import 'package:untitled2/SizeConfigration.dart';
import 'package:untitled2/widgets/DefaultButton.dart';

import '../Constants.dart';
import '../Wrapper.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Services services = Services();


  double screenHeight = SizeConfig.screenHeight! ;
  double signScreen = 0;
  double signUpScreen = 0;

  double screenOperator1  = 0 ;
  double screenOperator2  = 0 ;

  int pageState = 0 ;
  @override
  Widget build(BuildContext context) {



    switch(pageState) {
      case 0 :
        screenOperator1 = 0 ;
        screenOperator2 = 0 ;
        break;
      case 1 :
        screenOperator1 = screenHeight  * 0.62 ;
        screenOperator2 = 0 ;
        break;
      case 2:
        screenOperator2 = screenHeight  * 0.62 ;
        screenOperator1 = 0 ;



    }



    return  Scaffold(
      body: Stack(

          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  pageState = 0 ;
                });
              },
              child: SplashScreen((){
                setState(() {
                  pageState = 1 ;
                });
              }),
            ),
            SignInWidget(screenHeight: screenHeight, screenOperator1: screenOperator1 ,pressme:
            (){
              setState(() {
                pageState = 2;
                print ("screenOperator2 $screenOperator2");
                print ("screenOperator1 $screenOperator1");
                print ("pageState $pageState");
              });
            }


              ,),
            AnimatedContainer(
              padding: EdgeInsets.all(10),
              duration: Duration(milliseconds: 300),
              transform: Matrix4.translationValues(0, screenHeight - screenOperator2, 0),


              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  DefaultButton(press: (){
                    setState(() {
                      pageState = 1;
                      print ("screenOperator2 $screenOperator2");
                      print ("screenOperator1 $screenOperator1");
                      print ("pageState $pageState");
                    });
                  }, text: "Go To Register",myicon: Icon(Icons.app_registration)),

                ],
              ),
            )


          ],
        ),

    );
  }


}

class SignInWidget extends StatelessWidget {
  GlobalKey _Globalkey = GlobalKey<FormState>();


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  SignInWidget({
    Key? key,
    required this.screenHeight,
    required this.screenOperator1,
    required this.pressme
  }) : super(key: key);

  final double screenHeight;
  final double screenOperator1;
  Function() pressme ;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.all(10),
        duration: Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, screenHeight - screenOperator1, 0),


      decoration: BoxDecoration(
          color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),

      ),
      child: Form(
        key: _Globalkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: DefaultButton(press: pressme, text: "Go To Login",myicon: Icon(Icons.login)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            DefaultButton(press: (){

              if (emailController.text.isNotEmpty && passwordController.text.length < 9){
                print("am pressing ");
              }else {

                print(" information not valid  ");

              }




            }, text: "Register Account",myicon: Icon(Icons.assignment_turned_in)),

          ],
        ),
      ),
    );
  }
}


