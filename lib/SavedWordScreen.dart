import 'package:flutter/material.dart';

class SavedWordScreen extends StatelessWidget {
  var savedWords = [];

  SavedWordScreen({required this.savedWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Word'),
        ),
        body: Text(
          savedWords.join(" - "),
          style: TextStyle(fontSize: 40),
        ));
  }
}
