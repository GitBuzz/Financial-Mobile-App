import 'package:flutter/material.dart';
import 'package:money_management/views/reusable_widgets/accordion.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Accordion(
          '50% to Needs',
          'Needs are what you can’t live without, or at least very easily. They include things like: \n- Rent, \n- Groceries, \n- Utilities, such as electricity, water, and sewer.',
        ),
        Accordion(
          '40% to Wants',
          'Wants are what you desire but don’t actually need to survive. They might include: \n- Hobbies, \n- Vacations, \n- Dining out, \n- Digital and streaming services like Netflix and Hulu.',
        ),
        Accordion(
          '10% to Tithe',
          'Give God a little of what he has given you.',
        ),
      ],
    );
  }
}
