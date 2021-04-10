import 'package:flutter/material.dart';
import 'package:money_management/views/welcome/widgets/header.dart';
import 'package:money_management/views/welcome/widgets/income_form.dart';
import 'package:money_management/views/welcome/widgets/information.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Money Management'),
        leading: Icon(
          Icons.payments,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: 15),
            Information(),
            const SizedBox(height: 15),
            IncomeForm()
          ],
        ),
      ),
    );
  }
}
