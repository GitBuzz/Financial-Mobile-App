import 'package:flutter/material.dart';
import 'package:money_management/views/reusable_widgets/card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    @required this.calculatedList,
  });

  final List calculatedList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Money Management'),
        actions: <Widget>[],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomCard(
              cardIcon: Icon(
                Icons.receipt,
                size: 30,
              ),
              cardTitle: 'Calculated for needs:',
              cardSubtitle: '\$${calculatedList[0]}',
            ),
            CustomCard(
              cardIcon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              cardTitle: 'Calculated for wants:',
              cardSubtitle: '\$${calculatedList[1]}',
            ),
            CustomCard(
              cardIcon: Icon(
                Icons.wb_shade,
                size: 30,
              ),
              cardTitle: 'Calculated for tithe:',
              cardSubtitle: '\$${calculatedList[2]}',
            )
          ],
        ),
      ),
    );
  }
}
