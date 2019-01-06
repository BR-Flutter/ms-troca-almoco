import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
		title: 'Troca almoço',
		theme: ThemeData(
			primaryColor: Colors.blueGrey[900],
			accentColor: Colors.greenAccent[700],
            brightness: Brightness.dark
        ),
		home: HomePage(),
    );
  }
}

