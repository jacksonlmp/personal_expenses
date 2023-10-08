import 'package:flutter/material.dart';
import 'package:personal_expenses/models/transaction.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 'T1',
      title: "Tênis corrida",
      value: 350,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: "Carro",
      value: 350,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T3',
      title: "Moto",
      value: 350,
      date: DateTime.now(),
    ),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: <Widget>[
              ..._transactions.map((tr) {
                
              })
            ],
          )
        ],
      ),
    );
  }
}
