import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextStyle logoTextStyle = TextStyle(
    fontSize: 45 ,
    color: Colors.amber,
    fontWeight: FontWeight.bold
  );
  TextStyle paraTextStyle = TextStyle(
      fontSize: 25 ,
      fontWeight: FontWeight.w500,


  );

  var pageViewList = [
    {
      "text":"our shopping page \n provide new Services \n now you can install our app ",
        "image":"https://img.freepik.com/free-vector/seasonal-sale-discounts-presents-purchase-visiting-boutiques-luxury-shopping-price-reduction-promotional-coupons-special-holiday-offers-vector-isolated-concept-metaphor-illustration_335657-2766.jpg",
    },
    {
      "text":"Popular holiday weekends, such \n as Memorial Day weekend, Fourth of July weekend,\n Presidents Day weekend and Labor Day weekend",
      'image':"https://img.freepik.com/free-vector/hand-holding-shopping-bags_23-2147491522.jpg"
    },
    {
      "text":"our shopping page \n provide new Services \n now you can install our app ",
      "image":"https://c8.alamy.com/comp/2E8YWW0/hand-with-multicolored-shopping-bags-big-sale-concept-vector-illustration-2E8YWW0.jpg"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),


                Text("SHopping Page",
                  style:logoTextStyle ,
                ),
                SizedBox(
                  height: 40,
                ),
                  Text(pageViewList[0]['text']!,
                  style: paraTextStyle,
                  textAlign: TextAlign.center,
                  ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: NetworkImage(pageViewList[0]['image']!),
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),


                Text("SHopping Page",
                  style:logoTextStyle ,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(pageViewList[1]['text']!,
                  style: paraTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: NetworkImage(pageViewList[1]['image']!),
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),


                Text("SHopping Page",
                  style:logoTextStyle ,
                ),
                SizedBox(
                  height: 40,
                ),
                Text("our shopping page \n provide new Services \n now you can install our app ",
                  style: paraTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: NetworkImage("https://img.freepik.com/free-vector/seasonal-sale-discounts-presents-purchase-visiting-boutiques-luxury-shopping-price-reduction-promotional-coupons-special-holiday-offers-vector-isolated-concept-metaphor-illustration_335657-2766.jpg"),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
