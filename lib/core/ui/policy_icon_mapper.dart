import 'package:flutter/material.dart';

IconData getPolicyIcon(String policyType) {
  switch (policyType.toLowerCase()) {
    case 'car':
      return Icons.directions_car;
    case 'health':
      return Icons.health_and_safety;
    case 'travel':
      return Icons.flight;
    default:
      return Icons.description;
  }
}
