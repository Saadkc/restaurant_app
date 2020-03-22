import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/Custom%20Widgets/customscafold.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      child:Column(
      children: <Widget>[
      Container(
        height:  200,
        child:Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage("images/Pizza.png"),
              AssetImage("images/burger.jpg"),
              ],
        showIndicator: false,
        borderRadius: true,
          ),
        ),
        ],
      ),
     );
    return SafeArea(
      child: CustomScaffold(
      title: "Restaurant App UI KIT",
      index: 0,
      body:Container(
          child: Column(
            children: <Widget>[  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Dishes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 80),
                child: FlatButton(onPressed: (){},
                child: Text("View More",
                style: TextStyle(
                  color: Colors.red
                  ),
                  ),
                      ),
                    ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: imageSliderCarousel,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}