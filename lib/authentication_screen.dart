import 'package:flutter/material.dart';

import 'ui_constructors.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child:
            Text(
              'Authentication Screen Placeholder',
              style: TextStyle(fontSize: 24, color: Colors.grey[600]),
            ),
        ),
      ),
    );
  }
}
