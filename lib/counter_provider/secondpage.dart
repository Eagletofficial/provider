import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/counter_provider/counter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Button Pressed ${context.watch<Counter>().count} Times'),
          ),
           ElevatedButton(
              onPressed: (() => context.read<Counter>().subtract()),
              child: const Text('Subtract'),
            ),
            const SizedBox(height: 10),
             ElevatedButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              child: const Text('Back'),
            ),
        ],
      ),
    );
  }
}