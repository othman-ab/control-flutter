import 'package:flutter/material.dart';
import 'package:tp_drawer/screens/menu.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      drawer: Menu(),
//endDrawer: Drawer(),
    body: Center(
      child : Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EMSI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/deeplearning-image.jpeg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )
          ],
        ),

      )

    ),
    );
  }
}