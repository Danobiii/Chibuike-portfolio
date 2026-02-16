import 'package:flutter/material.dart';

import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/presentation/widgets/claim_card.dart';
import 'package:insurance_wallet/presentation/navigation/claims_repository.dart';
import 'package:insurance_wallet/presentation/screens/no_claims_screen.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class ViewClaimsScreen extends StatelessWidget {
  final PolicyType policy;

  const ViewClaimsScreen({required this.policy});

  @override
  Widget build(BuildContext context) {
    final claims = getClaimsForPolicy(policy);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(AppIcons.back),
        ),
        title: Text("Claims"),
      ),
      body: claims.isEmpty
          ? NoClaimsScreen()
          : ListView.builder(
              itemCount: claims.length,
              itemBuilder: (context, index) {
                final claim = claims[index];
                return ClaimCard(claim: claim);
              },
            ),
    );
  }
}
