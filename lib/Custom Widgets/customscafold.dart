import 'package:flutter/material.dart';
import 'package:restaurant_app/Custom%20Widgets/AppBar.dart';

class CustomScaffold extends StatelessWidget {

const CustomScaffold({
    @required this.title,
    @required this.body,
    @required this.index,
    Key key,
  }) : super(key: key);
  final String title;
  final Widget body;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white24,
          centerTitle: true,
          title: Text(title, style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.black,
               onPressed: (){}
              ),
            ],
          ),
          body: body,
          floatingActionButton:  FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.search),
            ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
          bottomNavigationBar: CustomBottomAppBar(
            index: index
            ),
    );
  }
}