import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  String value = 'Rabi';
  void clickMe() {
    setState(() {
      value = 'Rabia Abubackar';
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Column(
        children: <Widget>[
          Text("$value",style: TextStyle(
            color: Colors.purple,
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickMe,

          )
        ],
      ),
    );
  }
}