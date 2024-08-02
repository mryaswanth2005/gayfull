import 'package:flutter/material.dart';
import 'package:gay/globalstate.dart';
import 'package:gay/question7.dart';
import 'package:gay/question9.dart';

class Question8 extends StatefulWidget {
  const Question8({Key? key}) : super(key: key);

  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question8> {
  String questionKey = "hug";

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
                  'Would you like to have a Hug with your friends?',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      color: Colors.blue,
                      child: TextButton(
                        onPressed: () {
                          // Navigate to previous screen (Question2)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Question7(),
                            ),
                          );
                        },
                        child: const Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      color: Colors.blue,
                      child: TextButton(
                        onPressed: () {
                          // Navigate to next screen (Question4)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Question9(),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
