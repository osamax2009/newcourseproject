import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled2/Controller/Services.dart';
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
  int currentpage = 0 ;

  double screenHeight = 0;
  double signScreen = 0;
  double signUpScreen = 0;
  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height ;



    return  Scaffold(
      body: Stack(

          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "My Shopping \n App",
                        style: TextStyle(
                            fontSize: 35,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),


                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        child: PageView.builder(
                          onPageChanged:(value){
                            setState(() {
                              currentpage = value ;
                            });
                          } ,
                            itemCount: splashContaint.length,
                            itemBuilder: (cx,i)=>Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 170,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image(
                                        image: AssetImage(splashContaint[i]['image']!),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    child: Text(
                                      splashContaint[i]['text']!,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                              List.generate(
                                  splashContaint.length,
                                      (index) => buildDot(index))


                          ),
                          Spacer()
                        ],
                      ),
                    ),





                    DefaultButton(press: (){
                      setState(() {
                        signScreen = 400;
                        print(signScreen);
                      });

                    }, text: "Continue...")





                    // TextButton(
                    //     onPressed: (){
                    //       services.setToken();
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context)=>Wrapper())
                    //       );
                    //
                    // }, child: Text("Login..."))
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              transform: Matrix4.translationValues(1, screenHeight - signScreen, 0),
              height: screenHeight  - signScreen,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                )
              ),
              child: Center(
              child:  Column(
                  children: [
                    DefaultButton(press: (){
                      setState(() {
                        signScreen = 0;
                      });

                    }, text: "Sign Up"),
                    DefaultButton(press: (){
                      setState(() {
                        signUpScreen = 500;
                      });

                    }, text: "Sign Up")
                  ],
                )
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              transform: Matrix4.translationValues(1, screenHeight - signUpScreen, 0),
              height: screenHeight  - signScreen,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              child: Center(
                  child:  Column(
                    children: [
                      DefaultButton(press: (){
                        setState(() {
                          signScreen = 0;
                        });

                      }, text: "Sign Up"),
                      DefaultButton(press: (){
                        setState(() {
                          signUpScreen = 500;
                        });

                      }, text: "Sign Up")
                    ],
                  )
              ),
            )
          ],
        ),

    );
  }

  Widget buildDot(index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      margin: EdgeInsets.only(right:5 ),
      height: 6,
      width: currentpage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentpage == index  ? primaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }

}


