import 'package:flutter/material.dart';
import 'package:gay/globalstate.dart';
import 'package:gay/question7.dart';

class Question6 extends StatefulWidget {
  const Question6({Key? key}) : super(key: key);

  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question6> {
  String questionKey = "sleepover";

  void handleButtonPress(bool answer) {
    setState(() {
      globalState.answers[questionKey] = answer ? 0 : 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    int? currentAnswer = globalState.answers[questionKey];

    Color yesButtonColor = currentAnswer == 0 ? Colors.green : Colors.blue;
    Color noButtonColor = currentAnswer == 20 ? Colors.red : Colors.blue;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Would you like to have a sleepover with your friends?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      color: yesButtonColor,
                      child: TextButton(
                        onPressed: () => handleButtonPress(true),
                        child: const Text(
                          'Yes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 100,
                      color: noButtonColor,
                      child: TextButton(
                        onPressed: () => handleButtonPress(false),
                        child: const Text(
                          'No',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  height: 40,
                  width: 100,
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to next screen (Question2)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Question7(),
                        ),
                      );
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
