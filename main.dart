// Done by: Bruce Reece
// Topic: Lab 4
// Date: 02/02/22
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Button color variable
  Color buttonColor1 = Colors.black;
  Color buttonColor2 = Colors.black;
  String text = "This is some text!";

  // Functions that print to console
  void button1Pressed() {
    debugPrint("The button 1 was pressed!");

    setState(() {});
    buttonColor1 = Colors.red;
    buttonColor2 = Colors.black;
    text = "This class is awesome!";
  }

//Button two functionality
  void button2Pressed() {
    debugPrint("The button 2 was pressed!");

    setState(() {});
    buttonColor2 = Colors.red;
    buttonColor1 = Colors.black;
    text = "This is some text!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LAb4 - Stateful App'),
      ),
      body: Center(
        child: Container(
          // Blue box start
          color: Colors.blue,
          height: 300.0,
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                //Text start
                text,
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  //First button start
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    button1Pressed(); // button functionality
                  },
                  child: Text(
                    'Change Text',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: buttonColor1),
                  )),
              ElevatedButton(
                  //Second button start
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () {
                    button2Pressed(); // button functionality
                  },
                  child: Text(
                    'Display Original Text',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: buttonColor2),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
