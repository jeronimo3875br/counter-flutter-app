import "package:flutter/material.dart";
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador"),
          actions: [SwitchAppTheme()],
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Pai
                crossAxisAlignment: CrossAxisAlignment.center, // Filhos
                children: <Widget>[
                  Text("$_counter",
                      style: const TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontFamily: "roboto")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text("incrementar"),
                        onPressed: () {
                          setState(() {
                            _counter++;
                          });
                        },
                      ),
                      ElevatedButton(
                        child: const Text("Decrementar"),
                        onPressed: () {
                          setState(() {
                            _counter--;
                          });
                        },
                      )
                    ],
                  ),
                  Container(height: 40),
                  ElevatedButton(
                    child: const Text("Zerar"),
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                  )
                ])),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
        ));
  }
}
