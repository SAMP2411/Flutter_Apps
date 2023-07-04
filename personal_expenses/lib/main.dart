import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput = '';
  // String amountInput = '';

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Personal Expense Tracker',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                elevation: 100,
                color: Colors.white,
                child: Text(
                  'Chart !',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
