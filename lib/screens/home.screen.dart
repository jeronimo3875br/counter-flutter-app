import "package:flutter/material.dart";
import "../controllers/app.controller.dart";
import "../components/switchTheme.component.dart";

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, widget) {
          return Scaffold(
              appBar: AppBar(
                  title: const Text("Contador"),
                  actions: <Widget>[SwitchAppTheme()]),
              body: Container(
                  child: Center(
                      child: Text(
                "$_counter",
                style: TextStyle(
                    fontSize: 100,
                    color: AppController.instance.isDarkTheme
                        ? Colors.white
                        : Colors.deepPurple,
                    fontWeight: FontWeight.w500,
                    fontFamily: "arial"),
              ))),
              floatingActionButton: FloatingActionButton(
                  child: const Icon(Icons.add),
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  }));
        });
  }
}
