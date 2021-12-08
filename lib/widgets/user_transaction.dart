import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'New shoes',
      amount: 124.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Decathlon Tent',
      amount: 420.99,
      date: DateTime.now(),
    ),
    
    
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        // TransactionList(_userTransactions),
      ],
    ));
  }
}
