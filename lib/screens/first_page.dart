import 'package:flutter/material.dart';
import 'package:navigatetype/route/routes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Taha Hamada'),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushNamed(
                 Routes.SecondPage,
                  arguments: {
                    'text1': 'My name is taha',
                    'text2': 'My name is Mo',
                  },
                );
              },
              child: const Text(
                'Enter',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}