import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        'Calculation categories',
        style: TextStyle(color: Colors.black, fontSize: 23),
      ),
    );
  }
}
