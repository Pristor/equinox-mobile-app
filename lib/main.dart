import 'dart:ui';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'SearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(
    MaterialApp(
      home: MainPage()
    ));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Colors.grey[850];
    Color secondColor = Colors.grey[800];
    Color titleColor = Colors.cyan[500];

    List<Widget> locations = new List<Widget>();
    for (int i = 0; i<100; i++)
      {
        locations.add(FractionallySizedBox(
          widthFactor: 0.8,
          child: new Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(5),
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
              padding:
              EdgeInsets.all(20.0),
              child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: 'Station ${i}',
                contentPadding: EdgeInsets.all(20.0),
                    ))
                  ),
                  )
                ],
              ),
          ),
        )
        );
      }
    return Scaffold(
      backgroundColor: secondColor,
      appBar: AppBar(
        title: Text(
            'Equinox',
              style: TextStyle(
                color: titleColor
              ),),
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 5,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {

              })
        ],
      ),
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
              child: Text(
                "Weather Stations",
                style: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
            ),
            Expanded(
             child: ListView(
              children: locations
              ),
            )
          ]
        )
    );
  }
}
