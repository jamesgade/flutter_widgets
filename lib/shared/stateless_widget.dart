import 'package:flutter/material.dart';

class StatelessWidgetTemplate extends StatelessWidget {
  const StatelessWidgetTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless Widget Template'),
      ),
      body: const Text('Stateless Widget Template'),
    );
  }
}
