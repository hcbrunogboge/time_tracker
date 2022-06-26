import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/firebase_options.dart';

void main() async {
  runApp(const TimeTracker());

  await Firebase.initializeApp(
    name: 'time_tracker',
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class TimeTracker extends StatelessWidget {
  const TimeTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BB Time tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
