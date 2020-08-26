import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// The activeCardColor const is used to determine the ReusableCard color
const Color activeCardColor = Color(0xFF1D1E33);

/// Determine the buttom container color
const Color buttomContaierColor = Color(0xFFEB1555);

/// The Input Page
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            height: 80,
            color: buttomContaierColor,
            child: Center(
                child: Text(
              'Calculate Your BMI',
              style: TextStyle(fontSize: 25),
            )),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

/// Extracted Container
class ReusableCard extends StatelessWidget {
  /// Constructor
  ReusableCard(this.color, {this.cardChild});

  /// Properties
  final Color color;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
