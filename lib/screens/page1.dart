import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:tp_drawer/screens/menu.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}
class _Page1State extends State<Page1> {
  int _currentValue = 1;
  double calculateReluActivation(double value) {
    return value > 0 ? value : 0;
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final maxHeight = screenHeight / 3;

    return Scaffold(
      appBar: AppBar(title: Text("Relu")),
      drawer: Menu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: maxHeight,
            child: Image.asset(
              "assets/images/relu-image.png",
              fit: BoxFit.cover,
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
              'Relu Activation Function: ${calculateReluActivation(_currentValue.toDouble())}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}