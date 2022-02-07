import 'package:flutter/material.dart';

import 'LoginForm.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int pageState = 0 ;
  double  loginScreenHeight = 0;

  double registerScreenHeight = 0 ;

  @override
  Widget build(BuildContext context) {

    switch(pageState){
        case 0 :
          loginScreenHeight = MediaQuery.of(context).size.height;
          registerScreenHeight = MediaQuery.of(context).size.height;
          break;
        case 1 :
          loginScreenHeight = MediaQuery.of(context).size.height - 500;
          registerScreenHeight = MediaQuery.of(context).size.height;
          break;
      case 2 :
        loginScreenHeight = MediaQuery.of(context).size.height - 500;
        registerScreenHeight = MediaQuery.of(context).size.height - 450;
        break;
    }



    return Material(
      child: SafeArea(
          child: Stack(
            children: [
              Container(
        child: GestureDetector(
          onTap: (){
            setState(() {
              pageState = 0;
            });
          },
          child: Column(
                children: [
                SizedBox(
                  height: 10,
                ),
                  Text("ShoppingApp",style:
                  TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("welcome to our app  \n you can buy anything ",style:
                  TextStyle(
                      fontSize: 15,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold
                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 16,
                        color: Colors.white
                      )
                    ),
                    child: Image(
                      image: NetworkImage("https://www.expatica.com/app/uploads/sites/11/2014/05/Shopping.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.all(15),
                  width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(
                        //     width: 16,
                        //     color: Colors.white
                        // )
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink
                        ),
                        onPressed: (){
                          setState(() {
                              pageState = 1 ;
                          });
                        },
                        child: Text("Continue....")
                    ),
                  )
                ],
          ),
        ),
      ),/// splashscreen
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                transform: Matrix4.translationValues(1, loginScreenHeight, 0),
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(
                        //     width: 16,
                        //     color: Colors.white
                        // )
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink
                          ),
                          onPressed: (){
                            setState(() {
                              pageState = 2 ;
                            });
                          },
                          child: Text(" back to Register")
                      ),

                    ),
                    LoginForm()
                  ],
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                transform: Matrix4.translationValues(1, registerScreenHeight, 0),
                color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(
                        //     width: 16,
                        //     color: Colors.white
                        // )
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink
                          ),
                          onPressed: (){
                            setState(() {
                              pageState = 1 ;
                            });
                          },
                          child: Text(" back to login")
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
