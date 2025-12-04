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
          padding: const EdgeInsets.all(34),
          constraints: const BoxConstraints(
            maxWidth: 450,),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            getUnionLogo(context, 32),
            const SizedBox(height: 22),

          const Align(
              alignment: Alignment.centerLeft,
            child: Column(children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 22),
              Text(
                "Chose how you'd like to sign in",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],),

          ),

          ]),
        ),
      ),
    );
  }
}
