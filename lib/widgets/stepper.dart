import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() {
    return _StepperWidgetState();
  }
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Widget'),
      ),
      body: Stepper(
        type: StepperType.horizontal,
        stepIconBuilder: (stepIndex, stepState) {
          return Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: stepIndex < _currentStep ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: stepIndex < _currentStep
                ? const Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.white,
                  )
                : Center(
                    child: Text(
                      '${stepIndex + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
          );
        },
        steps: const [
          Step(
            title: Text('Step 1'),
            content: Text('This is Step 1'),
          ),
          Step(
            title: Text('Step 2'),
            content: Text('This is Step 2'),
          ),
          Step(
            title: Text('Step 3'),
            content: Text('This is Step 3'),
          ),
        ],
        currentStep: _currentStep,
        onStepTapped: (int stepIndex) {
          setState(() {
            _currentStep = stepIndex;
          });
        },
        onStepContinue: () {
          if (_currentStep != 2) {
            setState(() {
              _currentStep = _currentStep + 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep != 0) {
            setState(() {
              _currentStep = _currentStep - 1;
            });
          }
        },
      ),
    );
  }
}
