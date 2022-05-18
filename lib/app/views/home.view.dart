import "package:flutter/material.dart";
import "../controllers/app.controller.dart";
import "../components/switchAppTheme.component.dart";

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _counter = 0;

  void _Increment() {
    setState(() => _counter++);
  }

  void _reset() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Config"),
              trailing: SwitchAppTheme(),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _reset,
          child: Text(
            "$_counter",
            style: TextStyle(
              fontSize: 100,
              color: AppController.instance.isThemeDark
                  ? Colors.white
                  : Colors.red,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _Increment,
      ),
    );
  }
}
