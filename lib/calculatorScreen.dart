import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalculatorScreenState();
  }
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton("AC", Colors.grey, Colors.black),
                NumberButton("+/-", Colors.grey, Colors.black),
                NumberButton("%", Colors.grey, Colors.black),
                NumberButton("÷", Colors.orange, Colors.white),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "7",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "8",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "9",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "✕",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        ".",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "=",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
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

class NumberButton extends StatelessWidget {
  String text;
  Color color;
  Color textColor;

  NumberButton(this.text, this.color, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w300,
              color: textColor,
            ),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
