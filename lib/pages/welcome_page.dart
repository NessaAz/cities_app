import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
}

@override
_WelcomePageState createState() => _WelcomePageState();

class _WelcomePageState extends State<WelcomePage>{
  List images = [
    "bali.jpg",
    "beach.jpg",
    "rio_city.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                )
                )
            ),
          )
      }),
    );
  }
  
}