import 'package:flutter/material.dart';

import 'ui_constructors.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
              color: Colors.white,
              child: Column(
                children: [
                  // Top banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      'PLACEHOLDER HEADER TEXT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  // Main header
                  generateMainHeader(context, placeholderCallbackForButtons,
                          (ctx) {}, (ctx) {}),
                ],
              ),
            ),

            //Main body
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 48),
                    Text(
                      """
                      Welcome
                      
                      text
                      text
                      
                      text
                      text
                      
                      text
                      text
                      
                      text
                      
                      text""",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Footer
            generateFooter(context),
          ],
        ),
      ),
    );
  }
}
