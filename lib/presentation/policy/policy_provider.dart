import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insurance_wallet/presentation/policy/policy_notifier.dart';
import 'package:insurance_wallet/presentation/policy/policy_state.dart';

final policyProvider = StateNotifierProvider<PolicyNotifier, PolicyState>(
  (ref) => PolicyNotifier(),
);
