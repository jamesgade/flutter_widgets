import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitted Box'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          color: Colors.red,
          padding: const EdgeInsets.all(10.0),
          child: const FittedBox(     // fit text inside a box
            child: Text(
              'FITTED BOX WIDGET',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
