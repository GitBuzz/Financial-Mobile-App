import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IncomeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: new InputDecoration(labelText: "Enter your income"),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ], // Only numbers can be entered
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text('Calculate income'),
          icon: Icon(Icons.calculate),
        )
      ],
    );
  }
}
