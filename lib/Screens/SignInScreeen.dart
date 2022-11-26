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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignInScreen"),
      ),
      body: Center(
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


            Flexible(
              child: PageView.builder(
                  itemCount: splashContaint.length,
                  itemBuilder: (cx,i)=>Container(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          height: 225,
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
                          height: 225,
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





            DefaultButton(press: (){}, text: "Continue...")





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
    );
  }
}
