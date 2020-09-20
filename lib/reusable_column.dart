import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableColumn extends StatelessWidget {
  const ReusableColumn({this.text, this.property, this.unit});

  final String text;
  final String property;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Expanded>[
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                text,
                style: kLabelTextStyle,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    property,
                    style: kLabelTextStyle,
                  ),
                ),
                Center(
                  child: Text(
                    unit,
                    style: kLabelTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
