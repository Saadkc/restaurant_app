import 'package:flutter/material.dart';
import 'package:restaurant_app/Custom%20Widgets/customscafold.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: CustomScaffold(
       title: "Restaurant App UI KIT",
        index: 2,
        body: Container(),
      ),
    );
  }
}