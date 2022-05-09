import 'package:flutter/material.dart';
import "./home.screen.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  _email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    label: Text("Email"), border: OutlineInputBorder()),
              ),
              Container(height: 20),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
                decoration: const InputDecoration(
                    label: Text("Password"), border: OutlineInputBorder()),
              ),
              Container(height: 20),
              ElevatedButton(
                  child: const Text("Entrar"),
                  onPressed: () {
                    if (_email == "test@gmail.com" && _password == "12345") {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  })
            ],
          )),
    )));
  }
}
