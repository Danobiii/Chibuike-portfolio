import 'package:flutter/material.dart';
import 'package:insurance_wallet/models/entities/policies_entity.dart';

Color getIconColor(PolicyType policyTypeIcon) {
  switch (policyTypeIcon) {
    case PolicyType.car:
      return Colors.blue;
    case PolicyType.health:
      return Colors.red;
    case PolicyType.travel:
      return Colors.blue;
    }
}
