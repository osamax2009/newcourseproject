import 'package:flutter/material.dart';




class DefaultButton extends StatelessWidget {
  DefaultButton({
   this.press,
     this.myText,
     this.myColor
  }) ;
 final Function()? press ;

 final String? myText ;
final Color? myColor ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
          style:ElevatedButton.styleFrom(
            primary: myColor
          ) ,
          onPressed: press,
          child: Text(myText ??""),
    )
    );
  }
}
