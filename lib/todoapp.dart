import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          children: [
            const Title(),
            const Input(),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title();

  @override
  Widget build(BuildContext context) {
    return Text(
      'todos',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.w100,
        color: Color.fromARGB(37, 47, 47, 247),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'What?',
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.tealAccent,
            width: 0.0,
          ),
        ),
      ),
      onSubmitted: (value) {},
    );
  }
}
