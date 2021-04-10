import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_management/views/results/views/results.dart';

class IncomeForm extends StatelessWidget {
  double incomeForm;
  final textController = TextEditingController();

  List math() {
    final enteredIncome = double.parse(textController.text);
    final fifty = enteredIncome / 2;
    final forty = fifty * 0.40;
    final ten = (enteredIncome + 200) * 0.10;
    final calculatedIncom = [fifty, forty, ten];
    return calculatedIncom;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: textController,
          decoration: new InputDecoration(labelText: "Enter your income"),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ], // Only numbers can be entered
        ),
        ElevatedButton.icon(
          onPressed: () {
            math();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(
                  calculatedList: math(),
                ),
              ),
            );
          },
          label: Text('Calculate income'),
          icon: Icon(Icons.calculate),
        )
      ],
    );
  }
}
