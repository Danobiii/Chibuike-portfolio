import 'package:flutter/material.dart';

Color getStatusColor(String status) {
  switch (status.toLowerCase()) {
    case 'active':
      return Colors.green;
    case 'approved':
      return Colors.green;
    case "expired":
      return Colors.red;
    case "under review":
      return Color(0xFF2196F3);
    case "pending":
      return Color(0xFFFFC107);
    default:
      return Colors.grey;
  }
}
