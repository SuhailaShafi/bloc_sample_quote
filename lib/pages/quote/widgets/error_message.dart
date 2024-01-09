import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.msg});
  final String msg;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        SizedBox(
          height: 20,
          child: Text('$msg'),
        )
      ],
    );
  }
}
