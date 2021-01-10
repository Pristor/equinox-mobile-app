import 'package:dio/dio.dart';
import 'package:equinox/main.dart';
import 'package:flutter/material.dart';

class StationSearch extends SearchDelegate<String>{

  List stations = new List();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){})
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation
      ), onPressed: () {});
  }

  @override
  Widget buildResults(BuildContext context) {

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? stations : stations;
    return ListView.builder(itemBuilder: (context, index) => ListTile(
      leading: Icon(Icons.location_city),
        title: Text(suggestionList[index]),
    ));
  }

  StationSearch(List stations){
    this.stations = stations;
  }
}