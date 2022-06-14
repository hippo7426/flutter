import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home. No Training School',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text('Go Login Page',
                          style: TextStyle(fontSize: 20)))),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Container(
                      width: 180,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Go Register Page',
                        style: TextStyle(fontSize: 20),
                      )))
            ],
          ),
        ));
  }
}
