import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/data/data_sources/mocked_policies.dart';
import 'package:insurance_wallet/presentation/policy/policy_state.dart';

class GraphqlServices {
  late final GraphQLClient _policies;

  GraphqlServices() {
    _policies = GraphQLClient(link: MockedPolicies(), cache: GraphQLCache());
  }
  Future<List<PoliciesEntity>> getPolicies() async {
    const query = r'''
query{
policies{
id
policyType
policyDesc
status
policyNo
expires
  }}''';

    final result = await _policies
        .query(QueryOptions(document: gql(query)))
        .timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            throw Exception("Request timed out");
          },
        );
    final List userPolicies = result.data!["policies"];
    return userPolicies.map((e) => PoliciesEntity.fromJson(e)).toList();
  }
}
