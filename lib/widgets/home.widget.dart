import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    if (_counter <= 0) {
      restart();
    }

    setState(() {
      _counter--;
    });
  }

  void restart() {
    setState(() {
      _counter = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Contador")),
        body: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              child: Text("$_counter",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red, fontSize: 100)),
              onTap: restart),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Incrementar"), onPressed: increment),
              ElevatedButton(
                  child: const Text("Decrementar"), onPressed: decrement)
            ],
          )
        ])));
  }
}
