import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insurance_wallet/services/graphql_services.dart';
import 'package:insurance_wallet/views/policy/policy_state.dart';

class PolicyNotifier extends StateNotifier<PolicyState> {
  PolicyNotifier() : super(PolicyState(isLoading: false));

  Future<void> fetchPolicy() async {
    // print(" 🔵START");
    state = state.copyWith(isLoading: true);
    // print("🔵 loading set to true");
    state = state.copyWith(isLoading: true, error: null, data: []);
    try {
      final result = await GraphqlServices().getPolicies();
      state = state.copyWith(isLoading: false, data: result, error: null);
      // print("🔵🔵loading set to false- success");
    } catch (e) {
      print("🔴🔴 Error caught: $e");

      state = state.copyWith(isLoading: false, error: e.toString());
      // print("🔵loading set to false- success");
    }
  }
}
