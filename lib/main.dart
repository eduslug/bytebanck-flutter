import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransfencia(),
    ));
  }
}

class FormularioTransfencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('criando transferência'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  labelText: 'Numero da conta', hintText: '1000'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'teste'),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: Text('Treansferencia'),
            )
          ],
        ));
  }
}

class ListaTrasferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('transferencia de crédito'),
      ),
      body: Column(children: <Widget>[
        ItensTransferencias(Transferencia(100.0, 1000)),
        ItensTransferencias(Transferencia(2220, 5555)),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
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
