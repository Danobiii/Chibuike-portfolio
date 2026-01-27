import 'package:flutter/material.dart';
import 'package:insurance_wallet/presentation/screens/policies_screen.dart';

class SplashController {
  void getStarted(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PoliciesScreen()),
    );
  }
}
