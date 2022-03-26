import 'package:flutter/material.dart';
import 'package:session_2/second_page.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.controller,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final TextEditingController controller;
  final Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: TextField(
            controller: controller,
          ),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonLabel),
        ),
      ],
    );
  }
}
