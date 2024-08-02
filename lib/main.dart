import 'package:flutter/material.dart';
import 'package:gay/gaypage.dart';
import 'package:gay/lesbiantest.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              'assets/female.png',
              height: 700,
              width: 700,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              'assets/female.png',
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: Image.asset(
              'assets/female.png',
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            child: Image.asset(
              'assets/male.png',
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            top: 10,
            left: 240,
            child: Image.asset(
              'assets/male.png',
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 240,
            child: Image.asset(
              'assets/female.png',
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: Image.asset(
              'assets/male.png',
              height: 700,
              width: 700,
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            child: Image.asset(
              'assets/male.png',
              height: 300,
              width: 300,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 120,
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GayTestPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Gay Test',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 120,
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Lesbiantest(),
                        ),
                      );
                    },
                    child: const Text(
                      'Lesbian Test',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 131, 172),
                      ),
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
