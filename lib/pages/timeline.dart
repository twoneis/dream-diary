import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("Timeline"),
       ),
     );
   }
}