import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:tp_drawer/screens/menu.dart';
import 'dart:math';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _currentValue = 0;

  double calculateSigmoid(double value) {
    return 1 / (1 + exp(-value));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final maxHeight = screenHeight / 2;

    return Scaffold(
      appBar: AppBar(title: Text("Sigmoid")),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: maxHeight,
            child: Image.asset(
              "assets/images/sigmoid-function.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: NumberPicker(
                value: _currentValue,
                minValue: -100,
                maxValue: 100,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
                itemWidth: 50,
                axis: Axis.horizontal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sigmoid Activation Function: ${calculateSigmoid(_currentValue.toDouble())}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
