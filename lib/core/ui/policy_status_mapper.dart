import 'package:flutter/material.dart';

Color getStatusColor(String status) {
  switch (status.toLowerCase()) {
    case 'active':
      return Colors.green;
    case "expired":
      return Colors.red;
    case "in review":
      return Colors.orange;
    default:
      return Colors.grey;
  }
}
