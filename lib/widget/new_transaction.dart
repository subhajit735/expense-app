import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function add;
  NewTransaction(this.add);
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  void submitdata() {
    final enteredtitle = titlecontroller.text;
    final enteredamount = double.parse(amountcontroller.text);
    if (enteredtitle.isEmpty || enteredamount <= 0) {
      return;
    }
    add(
      enteredtitle,
      enteredamount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      surfaceTintColor: Colors.purple,
      margin: EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
                labelText: "Title",
              ),
              onSubmitted: (_) => add,
            ),
            TextField(
              controller: amountcontroller,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitdata,
            ),
            FlatButton(
              onPressed: () {
                submitdata();
              },
              child: Text("Add Transaction"),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
      elevation: 10,
    );
  }
}
