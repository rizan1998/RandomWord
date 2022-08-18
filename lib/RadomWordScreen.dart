import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'SavedWordScreen.dart';

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var savedWords = [];
  String randomWord = WordPair.random().asString;

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random().asString;
    });
  }

  void _saveWord() {
    savedWords.add(randomWord);
    print(savedWords);

    // halaman baru
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SavedWordScreen(savedWords: savedWords)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Fullter pertama"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            randomWord,
            style: TextStyle(fontSize: 40),
          ),
          IconButton(onPressed: _saveWord, icon: Icon(Icons.favorite_border))
        ],
      )), //center
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    ); //scaffold
  }
}
