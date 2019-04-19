import 'package:flutter/material.dart';

_CalculatorScreenState _globalState = new _CalculatorScreenState();
class CalculatorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _globalState;
  }
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double displayNumberSize = 50.0;
  String displayText = "";
  String cOrAC = "AC";
  double lastAnswer;
  String lastOperation;
  bool textNeedsToBeRemoved = false;
  bool addPeriod = false;

  String getDisplayText() {
    return displayText;
  }

  calculate(String buttonPressed) {
    if (lastOperation == "+") {
      lastAnswer = lastAnswer + double.tryParse(displayText);
    } else if (lastOperation == "-") {
      lastAnswer = lastAnswer - double.tryParse(displayText);
    } else if (lastOperation == "✕") {
      lastAnswer = lastAnswer * double.tryParse(displayText);
    } else if (lastOperation == "÷") {
      lastAnswer = lastAnswer / double.tryParse(displayText);
    }
    buttonPressed == "=" ? lastOperation = null : lastOperation = buttonPressed;
    displayText = "";
    setState(() {
      
    });
    displayText = fixFloat(lastAnswer.toString());
  }

  String fixFloat(String float) {
    if (float.contains(".")) {
      while (float[float.length - 1] == "0") {
        float = float.substring(0, float.length-2);
      }
      if (float[float.length - 1] == ".") {
        float = float.substring(0, float.length-2);
      }
    }
    return float;
  }

  String updateDisplayTextCallback(String buttonPressed) {
    if (int.tryParse(buttonPressed) != null) {
      if (textNeedsToBeRemoved) {
        displayText = buttonPressed;
        textNeedsToBeRemoved = !textNeedsToBeRemoved;
      }
      else {
        addPeriod ? displayText += "." + buttonPressed : displayText += buttonPressed;
        
      }
    }
    else if (buttonPressed == "AC" || buttonPressed == "C") {
      displayText = ""; 
      lastAnswer = null; 
      lastOperation = null;
    }
    else if (buttonPressed == "+" || buttonPressed == "-" || buttonPressed == "÷" || buttonPressed == "✕") {
      if (lastAnswer == null) {
        lastAnswer = double.tryParse(displayText);
        lastOperation = buttonPressed;
        textNeedsToBeRemoved = true;
      }
      else {
        calculate(buttonPressed);
      }
    } else if (buttonPressed == "=") {
      if (lastAnswer != null && buttonPressed != null && lastOperation != null) {
        calculate(buttonPressed);
      }
    }
    if (displayText == "") {cOrAC = "AC";}
    else {cOrAC = "C";}
    addPeriod = false;
    if (buttonPressed == ".") {
      addPeriod = true;
    }

    // this.build(context);
    setState(() {
      
    });
    // print("Fdsaf" + displayText);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: Align(alignment: Alignment.bottomLeft,
                  child: Text(
                    displayText, 
                    style: TextStyle(
                      color: Colors.white, fontSize: displayNumberSize),
                    ), )
                )
              ]
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(
                  text: cOrAC,
                  color: Colors.grey,
                  textColor: Colors.black,
                  fontSize: 40,
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                  text: "+/-",
                  color: Colors.grey,
                  textColor: Colors.black,
                  fontSize: 38,
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "%", color: Colors.grey, textColor: Colors.black),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "÷", color: Colors.orange, textColor: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(
                    text: "7",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "8",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "9",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "✕",
                    color: Colors.orange,
                    textColor: Colors.white,
                    fontSize: 26.0),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(
                    text: "4",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "5",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "6",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                  text: "-",
                  color: Colors.orange,
                  textColor: Colors.white,
                  fontSize: 65.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(
                    text: "1",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "2",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "3",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "+", color: Colors.orange, textColor: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                NumberButton(
                    text: "0",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "0",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: ".",
                    color: Colors.grey.shade800,
                    textColor: Colors.white),
                Padding(
                  padding: EdgeInsets.all(4.0),
                ),
                NumberButton(
                    text: "=", color: Colors.orange, textColor: Colors.white),
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
  double fontSizeScalar = .85;
  // so I don't have to change the default font size and all the non-defualts if i want the font changed

  NumberButton({this.text, this.color, this.textColor, this.fontSize = 45.0});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
          onTap: () {
            _globalState.updateDisplayTextCallback(text);
          },
          child: Container(
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize * fontSizeScalar,
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
        )
      );
  }
}
