import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" home page"),
      ),
      body: Container(
        child: Image(
          image: AssetImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Flag_of_Iraq.svg/255px-Flag_of_Iraq.svg.png"),
        ),
      ),
    );
  }
}
