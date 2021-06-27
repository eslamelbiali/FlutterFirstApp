import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget
{
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1 ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: ()
              {
                setState(() {
                  counter--;
                  print(counter);
                });

              },
              child: Text(
                'Minus',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState(() {
                  counter++;
                  print(counter);
                });

              },
              child: Text(
                'Plus',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
