import "package:flutter/material.dart";
import "../components/switchTheme.component.dart";

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador"),
          actions: [SwitchThemeComponent()],
        ),
        body: const Center(
          child: Text("Paulo gay!"),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.search),
          onPressed: () {},
        ));
  }
}
