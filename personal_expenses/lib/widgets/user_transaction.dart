import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      amount: 600,
      date: DateTime.now(),
      title: 'White Sneakers',
    ),
    Transaction(
      id: 't2',
      amount: 500,
      date: DateTime.now(),
      title: 'Arduino',
    ),
  ];

  void _addNewTransaction(String txtitle, int txAmount) {
    final newTx = Transaction(
      title: txtitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(
      () {
        _userTransaction.add(newTx);
      },
    );
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
