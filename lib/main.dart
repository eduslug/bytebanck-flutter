import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('transferencia de crédito'),
    ),
    body: Column(children: <Widget>[
      Card(
        child: ListTile(
          title: Text('100.00'),
          subtitle: Text('1000'),
          tileColor: Color.fromARGB(255, 91, 129, 81),
          leading: Icon(Icons.monetization_on),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('200.00'),
          subtitle: Text('1000'),
          tileColor: Color.fromARGB(255, 91, 129, 81),
          leading: Icon(Icons.monetization_on),
        ),
      ),
    ]),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
  )));
}
