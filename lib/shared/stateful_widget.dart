import 'package:flutter/material.dart';

class StatefulWidgetTemplate extends StatefulWidget {
  const StatefulWidgetTemplate({super.key});

  @override
  State<StatefulWidgetTemplate> createState() => _StatefulWidgetTemplateState();
}

class _StatefulWidgetTemplateState extends State<StatefulWidgetTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Template'),
      ),
      body: const Text('Stateful Widget Template'),
    );
  }
}
