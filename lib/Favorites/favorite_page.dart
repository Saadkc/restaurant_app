import 'package:flutter/material.dart';
import 'package:restaurant_app/Custom%20Widgets/customscafold.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: CustomScaffold(
       title: "Restaurant App UI KIT",
        index: 1,
        body: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("My Favorite Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
              ),
            ),
            
          ],
          ),
      ),
    );
  }
}