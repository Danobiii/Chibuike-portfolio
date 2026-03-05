import 'package:flutter/material.dart';

class SplashController {
  void getStarted(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/policies_screen');
  }
}
