import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/stepper.dart';   // StepperWidget
// import 'package:flutter_widgets/widgets/fittedbox.dart';   // SearchBarWidget
// import 'package:flutter_widgets/widgets/search_bar.dart';   // FittedVoxWidget
import 'package:flutter_widgets/widgets/adaptive_widgets.dart'; // AdaptiveWidgets    // run on ios & android to see the difference

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StepperWidget(),
    );
  }
}
