import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String? email = '';
  String? password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 134, 208, 239),
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  height: 300,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (newValue) {
                          setState(() {
                            email = newValue;
                          });
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '이메일',
                            filled: true,
                            fillColor: Colors.white),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        onSaved: (newValue) {
                          setState(() {
                            password = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '비밀번호',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: true,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          formKey.currentState?.save();
                        },
                        child: Text('Login'),
                      ),
                      Text('$email'),
                      Text('$password'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
