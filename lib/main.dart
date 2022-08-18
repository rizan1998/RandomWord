import 'dart:ffi';

import 'package:flutter/material.dart';
import 'RadomWordScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      home: RandomWord(),
    ); //MaterialApp
  }
}
