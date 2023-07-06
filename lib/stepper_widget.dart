import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Widget'),
      ),
      body: Stepper(
        steps: [
          Step(
            isActive: _currStep == 0 ? true : false,
            title: const Text('First Step'),
            content: const Text('This is First Step'),
          ),
          Step(
            isActive: _currStep == 1 ? true : false,
            title: const Text('Second Step'),
            content: const Text('This is Second Step'),
          ),
          Step(
            isActive: _currStep == 2 ? true : false,
            title: const Text('Third Step'),
            content: const Text('This is Third Step'),
          ),
          Step(
            isActive: _currStep == 3 ? true : false,
            title: const Text('Forth Step'),
            content: const Text('This is Forth Step'),
          ),
        ],
        onStepTapped: (value) {
          setState(() {
            _currStep = value;
          });
        },
        currentStep: _currStep,
        onStepContinue: () {
          if (_currStep != 3) {
            setState(() {
              _currStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currStep != 0) {
            setState(() {
              _currStep -= 1;
            });
          }
        },
      ),
    );
  }
}
