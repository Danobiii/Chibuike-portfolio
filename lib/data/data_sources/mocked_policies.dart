import 'package:graphql_flutter/graphql_flutter.dart';

class MockedPolicies extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    await Future.delayed(Duration(seconds: 1));
    yield Response(
      data: {
        "policies": [
          {
            "id": "1",
            "policyType": "car",
            "policyDesc": "Car insurance",
            "status": "Active",
            "policyNo": "Policy No: AXD-20394",
            "expires": "Expires: Mar 24, 2026",
          },
          {
            "id": "1",
            "policyType": "Health",
            "policyDesc": "Health insurance",
            "status": "Expired",
            "policyNo": "Policy No:HLD-4521",
            "expires": "Expires: Feb 15, 2023",
          },
          {
            "id": "1",
            "policyType": "Travel",
            "policyDesc": "Travel insurance",
            "status": "In Review",
            "policyNo": "Policy No:TRV-7690",
            "expires": "Expires:Dec 10, 2025",
          },
        ],
      },
      response: {},
    );
  }
}
