import 'package:flutter/material.dart';
import 'package:restaurant_app/login.dart';
import 'package:restaurant_app/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme
        (title: TextStyle(
          color: Colors.red,
          ),
        ),
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Restaurant App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.red,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16
              ),
              tabs: <Widget>[
                Tab(text: "Login",),
                Tab(text: "Register",),
                ],
              ),
            ),
          body: TabBarView(
            children: <Widget>[
              Login(),
              Register(),
            ],
            ),
          ),
      ), 
    );
  }
}
