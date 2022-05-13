import "package:flutter/material.dart";

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.notifications)],
      ),
      body: const Center(
          child: Text("I'm a genius!", style: TextStyle(color: Colors.black))),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text("Admin"),
              accountEmail: Text("admin@codeexp.com.br")),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Configurações"),
            subtitle: const Text("Sair"),
            onTap: () {
              Navigator.of(context).pushNamed("/login");
            },
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: "Projects"),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Messages",
          )
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
