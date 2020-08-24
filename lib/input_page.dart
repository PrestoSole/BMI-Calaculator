import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// The Input Page
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
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Extracted Container
class ReusableCard extends StatelessWidget {
  // Constructor
  const ReusableCard(this.color);
  // Properties
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
