import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('TASK 2',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 25))),
        ),
        body: const Center(
          child: Text(
            'AROONA BIBI',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.teal,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
