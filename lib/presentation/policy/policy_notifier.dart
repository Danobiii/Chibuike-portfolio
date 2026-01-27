import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insurance_wallet/data/services/graphql_services.dart';
import 'package:insurance_wallet/presentation/policy/policy_state.dart';

class PolicyNotifier extends StateNotifier<PolicyState> {
  PolicyNotifier() : super(PolicyState(isLoading: false));

  Future<void> fetchPolicy() async {
    state = state.copyWith(isLoading: true);

    state = state.copyWith(isLoading: true, error: null, data: []);
    try {
      final result = await GraphqlServices().getPolicies();
      state = state = state.copyWith(
        isLoading: false,
        data: result,
        error: null,
      );
    } catch (e) {
      state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
