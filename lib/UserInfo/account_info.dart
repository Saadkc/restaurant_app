import 'package:flutter/material.dart';
import 'package:restaurant_app/Custom%20Widgets/customscafold.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: CustomScaffold(
       title: "Restaurant App UI KIT",
        index: 3,
        body: Container(),
      ),
    );
  }
}