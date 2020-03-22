import 'package:flutter/material.dart';

import 'package:restaurant_app/Favorites/favorite_page.dart';
import 'package:restaurant_app/Home/homepage.dart';
import 'package:restaurant_app/Store/chart_page.dart';
import 'package:restaurant_app/UserInfo/account_info.dart';

class CustomBottomAppBar extends StatelessWidget {

  const CustomBottomAppBar({Key key, @required this.index}) : super (key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: IconButton(
                  icon: Icon(Icons.home, color: index == 0 ? Colors.red : Theme.of(context).textTheme.caption.color, ), 
                  onPressed: (){
                    
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
                  }
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: IconButton(
                  icon: Icon(Icons.favorite, color: index == 1 ? Colors.red : Theme.of(context).textTheme.caption.color, ), 
                  onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Favorite()));
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: IconButton(
                  icon: Icon(Icons.local_grocery_store, color: index == 2 ? Colors.red : Theme.of(context).textTheme.caption.color,), 
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Chart()));
                  }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  icon: Icon(Icons.person,  color: index == 3 ? Colors.red : Theme.of(context).textTheme.caption.color,), 
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Account()));
                  }),
              ),
            ],
          ),
    );
  }
}
