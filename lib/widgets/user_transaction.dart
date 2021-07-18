import '../models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 58.81, date: DateTime.now()),
    Transaction(
      id: 't2',
      title: 'Weekly groslaries',
      amount: 45.22,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String xtTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: xtTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
