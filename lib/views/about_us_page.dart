import 'package:flutter/material.dart';
import 'package:union_shop/views/ui_constructors.dart';



class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericPage(bodyContent: [
      //Main body
      Container(
        color: Colors.white,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              SizedBox(height: 48),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 48),
              Text(
                aboutUsMessage,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      )
    ]);
  }

  static const String aboutUsMessage = '''
Welcome to the Union Shop!

We’re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!

All online purchases are available for delivery or instore collection!

We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don’t hesitate to contact us at hello@upsu.net.

Happy shopping!

The Union Shop & Reception Team
''';
}
