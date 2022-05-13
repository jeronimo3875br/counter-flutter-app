import 'package:flutter/material.dart';
import 'home.screen.dart';

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
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                  )),
              const SizedBox(height: 30),
              const Text("Welcome back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "arial",
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) {
                  _email = value;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail, color: Colors.black),
                  hintText: "E-mail",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1)),
                ),
              ),
              Container(height: 20),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1))),
              ),
              Container(height: 20),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                    child: const Text("Entrar"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const StadiumBorder()),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                    onPressed: () {
                      if (_email == "admin@codeexp.com.br" &&
                          _password == "jeronimogostoso") {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    }),
              ),
              const SizedBox(height: 30),
              const Text("@codeexp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontFamily: "arial",
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            ],
          )),
    )));
  }
}
