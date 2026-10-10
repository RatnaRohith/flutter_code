import 'package:flutter/material.dart';

import 'themes/app_theme.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      home: Scaffold(
        appBar: AppBar(title: const Text("Custom Widgets")),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: "Welcome to Flutter"),

              const SizedBox(height: 20),

              CustomButton(
                text: "Click Me",
                onPressed: () {
                  print("Button clicked");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
