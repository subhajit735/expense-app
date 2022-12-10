import 'package:flutter/material.dart';
import 'package:personal_expense/models/transaction.dart';
import 'package:personal_expense/widget/new_transaction.dart';
import 'package:personal_expense/widget/transaction_list.dart';
import './widget/user_transaction.dart';
import './widget/chart.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Personal Expense",
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatefulWidget {
  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final titlecontroller = TextEditingController();

  final amountcontroller = TextEditingController();

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransaction();
        });
  }

  List<Transaction> _userTransactions = [];

  List<Transaction> get _recentTransactions {
    return _userTransactions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
        centerTitle: true,
        title: Text("Personal expense"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Chart(recentTransaction),
            UserTransaction(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
