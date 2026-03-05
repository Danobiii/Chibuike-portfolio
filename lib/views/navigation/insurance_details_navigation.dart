import 'package:flutter/material.dart';
import 'package:insurance_wallet/models/entities/policies_entity.dart';

void onPolicyTapped(BuildContext context, PoliciesEntity policy) {
  switch (policy.policyTypeIcon) {
    case PolicyType.car:
      Navigator.pushNamed(context, '/car_details');
    case PolicyType.health:
      Navigator.pushNamed(context, "/health_details");
    case PolicyType.travel:
      Navigator.pushNamed(context, "/travel_details");
      break;
  }
}
