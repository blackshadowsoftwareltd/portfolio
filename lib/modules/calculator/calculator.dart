import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}

class CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _input = "";
  double _num1 = 0;
  double _num2 = 0;
  String _operation = "";

  void _buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _input = "";
      _num1 = 0;
      _num2 = 0;
      _operation = "";
      setState(() {
        _output = "0";
      });
    } else if (buttonText == "⌫") {
      setState(() {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
          _output = _input.isEmpty ? "0" : _input;
        }
      });
    } else if (buttonText == "=") {
      _num2 = double.parse(_input);
      setState(() {
        switch (_operation) {
          case "+":
            _output = (_num1 + _num2).toString();
            break;
          case "-":
            _output = (_num1 - _num2).toString();
            break;
          case "×":
            _output = (_num1 * _num2).toString();
            break;
          case "÷":
            _output = (_num1 / _num2).toString();
            break;
        }
        _input = _output;
      });
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "×" || buttonText == "÷") {
      _num1 = double.parse(_input);
      _operation = buttonText;
      setState(() {
        _input = "";
      });
    } else {
      setState(() {
        _input += buttonText;
        _output = _input;
      });
    }
  }

  Widget _buildButton(String label, Color color, {double height = 1}) {
    return GestureDetector(
      onTap: () {
        _buttonPressed(label);
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 80,
        width: 80,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              _output,
              style: const TextStyle(color: Colors.white, fontSize: 80),
            ),
          ),
          const Divider(color: Colors.grey),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildButton("C", Colors.grey),
                      _buildButton("⌫", Colors.grey),
                      _buildButton("%", Colors.grey),
                      _buildButton("÷", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("7", Colors.grey[850]!),
                      _buildButton("8", Colors.grey[850]!),
                      _buildButton("9", Colors.grey[850]!),
                      _buildButton("×", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("4", Colors.grey[850]!),
                      _buildButton("5", Colors.grey[850]!),
                      _buildButton("6", Colors.grey[850]!),
                      _buildButton("-", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("1", Colors.grey[850]!),
                      _buildButton("2", Colors.grey[850]!),
                      _buildButton("3", Colors.grey[850]!),
                      _buildButton("+", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      _buildButton("0", Colors.grey[850]!, height: 1.0),
                      _buildButton(".", Colors.grey[850]!),
                      _buildButton("=", Colors.orange),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
