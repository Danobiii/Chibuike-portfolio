import 'package:flutter/material.dart';
import 'package:insurance_wallet/models/entities/policies_entity.dart';

IconData getPolicyIcon(PolicyType type) {
  switch (type) {
    case PolicyType.car:
      return Icons.directions_car;
    case PolicyType.health:
      return Icons.health_and_safety;
    case PolicyType.travel:
      return Icons.flight;
  }
}
