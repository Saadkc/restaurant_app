import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
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
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.perm_identity),
                  title: Text("Username"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.mail_outline),
                  title: Text("Email"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.lock_outline),
                  title: Text("Password"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 134,vertical: 11),
                  child: const Text(  
                    'Register',
                    style: TextStyle(fontSize: 20),
                  ),
                 color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( 
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                  CircleAvatar(
                    child: Text("f",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                    radius: 27.0,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("G",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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