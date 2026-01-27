import 'package:insurance_wallet/domain/entities/policies_entity.dart';

class PolicyState {
  final bool isLoading;
  final List<PoliciesEntity>? data;
  final String? error;

  PolicyState({required this.isLoading, this.data, this.error});
  PolicyState copyWith({
    bool? isLoading,
    String? error,
    List<PoliciesEntity>? data,
  }) {
    return PolicyState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      data: data ?? data,
    );
  }
}
