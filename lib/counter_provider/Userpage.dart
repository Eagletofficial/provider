import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/counter_provider/counter.dart';
import 'package:providers/counter_provider/newcounter.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Button Pressed ${context.watch<Counter>().count} Times\nUser ${context.watch<User>().user}'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<User>().addUser("david")),
              child: const Text('Add User'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (() => context.read<User>().removeUser('david')),
              child: const Text('Remove User'),
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
      ),
    );
  }
}
