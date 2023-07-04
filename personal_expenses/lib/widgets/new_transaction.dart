import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'What you spent on?'),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount you spent!!'),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  int.parse(amountController.text),
                );
                // print(titleController.text);
                // print(amountController.text);
              },
              child: Text('Add Transaction'),
              textColor: Colors.purpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
