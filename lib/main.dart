import 'package:flutter/material.dart';

import 'models/item.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "todo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = generateItems();
  }

  List<Item> generateItems() {
    var tempItems = new List<Item>();
    tempItems = [];
    tempItems.add(Item(done: true, title: "Item 0"));
    tempItems.add(Item(done: false, title: "Item 1"));
    tempItems.add(Item(done: false, title: "Item 2"));
    tempItems.add(Item(done: true, title: "Item 3"));
    tempItems.add(Item(done: true, title: "Item 4"));
    return tempItems;
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("todo"),
        ),
        body: ListView.builder(
            itemCount: widget.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Text(widget.items[index].title);
            }));
  }
}
