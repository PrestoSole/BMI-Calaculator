import 'package:flutter/material.dart';
import 'package:quantities/quantities.dart';
import 'input_page.dart';
import 'round_icon_button.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn(
      {this.text,
      this.value,
      this.onPressed_minus,
      this.onPressed_plus,
      this.unit});

  final String text;
  final int value;
  final String unit;
  final void Function() onPressed_plus;
  final void Function() onPressed_minus;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.toString(),
              style: kNumberTextStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              unit,
              style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onPressed_minus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressed_plus,
            ),
          ],
        ),
      ],
    );
  }
}
