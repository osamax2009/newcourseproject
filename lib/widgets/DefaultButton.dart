
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
   DefaultButton({
    Key? key,
    required this.press ,
    required this.text,
     required this.myicon,

  }) : super(key: key);

  final Function() press;
  final String text;
  final Icon myicon;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 60,
        child: ElevatedButton(onPressed: press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(text,
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                myicon
              ],
            ))
    );
  }
}
