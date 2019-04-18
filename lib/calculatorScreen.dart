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
                NumberButton(text: "AC", color: Colors.grey, textColor: Colors.black, fontSize: 40,),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "+/-", color: Colors.grey, textColor: Colors.black, fontSize: 38,),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "%", color: Colors.grey, textColor: Colors.black),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "÷", color: Colors.orange, textColor: Colors.white),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(4.0),),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(text: "7", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "8", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "9", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "✕", color: Colors.orange, textColor: Colors.white, fontSize: 26.0),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(4.0),),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(text: "4", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "5", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "6", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "-", color: Colors.orange, textColor: Colors.white, fontSize: 65.0,),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(4.0),),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(text: "1", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "2", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "3", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "+", color: Colors.orange, textColor: Colors.white),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(4.0),),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(text: "0", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "0", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: ".", color: Colors.grey.shade800, textColor: Colors.white),
                Padding(padding: EdgeInsets.all(4.0),),
                NumberButton(text: "=", color: Colors.orange, textColor: Colors.white),
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
  double fontSize;

  NumberButton({this.text, this.color, this.textColor, this.fontSize = 45.0});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
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
