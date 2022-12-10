import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';


class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransaction = [
    Transaction(
      id: '1',
      title: 'Groceries',
      amount: 120.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Fruits',
      amount: 100.45,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _usertransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NewTransaction(_addTransaction), // adding item to list
          TransactionList(_usertransaction),//making list
        ],
      ),
    );
  }
}
