import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler, {super.key})

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        child: Text('Answer 1'),
      ),
    );
  }
}
