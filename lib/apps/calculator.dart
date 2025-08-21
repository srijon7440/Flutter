import 'package:flutter/material.dart';

import '../widgets/calculator_button.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String _output = '0';
  String _input = '0';
  String _operator = '0';
  double num1 = 0;
  double num2 = 0;
  void buttonPressed(String value) {
    setState(() {
      print('inputs=$value');
      if (value == 'C') {
        _output = '0';
        _input = '';
        _operator = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '+' || value == '-' || value == '×' || value == '÷') {
        num1 = double.tryParse(_input) ?? 0;
        _operator = value;
        _input = '';
      } else if (value == '=') {
        num2 = double.tryParse(_input) ?? 0;
        double result = 0;
        if (_operator == '+') {
          result = num1 + num2;
        } else if (_operator == '-') {
          result = num1 - num2;
        } else if (_operator == '×') {
          result = num1 * num2;
        } else if (_operator == '÷') {
          result = num2 != 0 ? num1 / num2 : 0; // prevent division by zero
        }
        _output = result.toString();
        _input = _output; // so we can chain calculations
      } else {
        // Number or decimal
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$num1 $_operator $num2',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white54
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    _output,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              CalculatorButtons(onClick: () => buttonPressed('7'), text: '7',),
              CalculatorButtons(onClick: () => buttonPressed('8'), text: '8',),
              CalculatorButtons(onClick: () => buttonPressed('9'), text: '9',),
              CalculatorButtons(onClick: () => buttonPressed('÷'),
                text: '÷',
                color: Colors.orange,),


            ],
          ),
          Row(
            children: [
              CalculatorButtons(onClick: () => buttonPressed('4'), text: '4',),
              CalculatorButtons(onClick: () => buttonPressed('5'), text: '5',),
              CalculatorButtons(onClick: () => buttonPressed('6'), text: '6',),
              CalculatorButtons(onClick: () => buttonPressed('×'),
                text: '×',
                color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              CalculatorButtons(onClick: () => buttonPressed('1'), text: '1',),
              CalculatorButtons(onClick: () => buttonPressed('2'), text: '2',),
              CalculatorButtons(onClick: () => buttonPressed('3'), text: '3',),
              CalculatorButtons(onClick: () => buttonPressed('-'),
                text: '-',
                color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              CalculatorButtons(onClick: () => buttonPressed('C'), text: 'C',),
              CalculatorButtons(onClick: () => buttonPressed('0'), text: '0',),
              CalculatorButtons(onClick: () => buttonPressed('='), text: '=',),
              CalculatorButtons(onClick: () => buttonPressed('+'),
                text: '+',
                color: Colors.orange,),


            ],
          ),

        ],
      ),
    );
  }
}



