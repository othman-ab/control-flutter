import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:tp_drawer/screens/menu.dart';
import 'dart:math';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _currentValue = 0;

  double calculateTanhActivation(double value) {
    return (exp(value) - exp(-value)) / (exp(value) + exp(-value));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final maxHeight = screenHeight / 3;

    return Scaffold(
      appBar: AppBar(title: Text("Tanh")),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: maxHeight,
            child: Image.asset(
              "assets/images/tanh-image.png",

            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0), // Adjust the vertical margin as needed
              padding: EdgeInsets.all(8.0), // Add padding if desired
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add a border for visual separation
                borderRadius: BorderRadius.circular(8.0), // Optional: Round the corners
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
              'Tanh Activation Function: ${calculateTanhActivation(_currentValue.toDouble())}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
