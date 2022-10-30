import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/counter_provider/counter.dart';
import 'package:providers/counter_provider/secondpage.dart';

class MyProvider extends StatefulWidget {
  const MyProvider({Key? key}) : super(key: key);

  @override
  State<MyProvider> createState() => _MyProviderState();
}

class _MyProviderState extends State<MyProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('PROVIDER ${context.watch<Counter>().count}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Button Pressed ${context.watch<Counter>().count} Times'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<Counter>().add()),
              child: const Text('Add'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<Counter>().subtract()),
              child: const Text('Subtract'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<Counter>().reset()),
              child: const Text('Reset'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<Counter>().multiply()),
              child: const Text('Multiply'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondPage()));
              }),
              child: const Text('PUSH'),
            ),
          ],
        ),
      ),
      
    );
  }
}
