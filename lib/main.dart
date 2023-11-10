import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text('transferencia de crédito'),
    ),
    body: ListaTrasferencia(),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
  )));
}

class ListaTrasferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      ItensTransferencias(Transferencia(100.0, 1000)),
      ItensTransferencias(Transferencia(2220, 5555)),
    ]);
  }
}

class ItensTransferencias extends StatelessWidget {
  final Transferencia _transferencia;

  ItensTransferencias(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
        tileColor: Color.fromARGB(255, 91, 129, 81),
        leading: Icon(Icons.monetization_on),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
