import 'dart:math';
import 'package:flutter/material.dart';
import 'package:restaurant_app/login/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("Create an account",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(Icons.perm_identity),
                  title: Text("Username"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text("Email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
              child: Card(
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(Icons.lock_outline),
                  title: Text("Password"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
                textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 120,vertical: 15),
                  child: const Text(  
                    'Register',
                    style: TextStyle(fontSize: 20),
                  ),
                 color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
              child: Divider(
                color: Colors.red,
                thickness: sqrt1_2,
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    child: Text("f",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                    radius: 27.0,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage("https://drive.google.com/uc?id=15IXOkA4NT-CvAhXC9IPP255VHUjOnRwX"),
                    radius: 27.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ), 
    );
  }
}