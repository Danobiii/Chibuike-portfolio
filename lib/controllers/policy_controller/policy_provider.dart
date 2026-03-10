import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insurance_wallet/controllers/policy_controller/policy_notifier.dart';
import 'package:insurance_wallet/views/policy/policy_state.dart';

final policyProvider = StateNotifierProvider<PolicyNotifier, PolicyState>(
  (ref) => PolicyNotifier(),
);
