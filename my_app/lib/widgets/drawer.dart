import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
        child: Text('My home page'),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer header"),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ItemOnePage();
                  },
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Text Item 2'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ItemTwoPage(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class ItemOnePage extends StatelessWidget {
  const ItemOnePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Item One')),
      body: const Center(child: Text("Item 1 Screen")),
    );
  }
}

class ItemTwoPage extends StatelessWidget {
  const ItemTwoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Item two"),
      ),
      body: const Center(
        child: Text('Item 2 Screen'),
      ),
    );
  }
}
