import 'package:flutter/material.dart';

class MyProvider extends StatefulWidget {
  const MyProvider({Key? key}) : super(key: key);

  @override
  State<MyProvider> createState() => _MyProviderState();
}

int value = 0;

class _MyProviderState extends State<MyProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROVIDER $value'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Button Pressed $value'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  value++;
                });
              }),
              child: const Text('Add'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  value--;
                });
              }),
              child: const Text('Subtract'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  value = 0;
                });
              }),
              child: const Text('Reset'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() {
                setState(() {
                  value = value * 2;
                });
              }),
              child: const Text('Multiply'),
            ),
          ],
        ),
      ),
    );
  }
}
