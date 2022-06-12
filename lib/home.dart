import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
          child: Text('home my sweet home',
              style: TextStyle(color: Colors.black, fontSize: 30))),
    );
  }
}
