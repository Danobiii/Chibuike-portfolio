import 'package:flutter/material.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/presentation/navigation/claims_repository.dart';
import 'package:insurance_wallet/presentation/screens/car_insurance_policy_details.dart';
import 'package:insurance_wallet/presentation/screens/view_claims_screen.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class HealthInsurancePolicyDetails extends StatefulWidget {
  const HealthInsurancePolicyDetails({super.key});

  @override
  State<HealthInsurancePolicyDetails> createState() =>
      _HealthInsurancePolicyDetailsState();
}

class _HealthInsurancePolicyDetailsState
    extends State<HealthInsurancePolicyDetails> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(AppIcons.back),
        ),
        title: Text(
          "Policy Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(235, 237, 236, 236),
          ),
        ),
      ),
      body: InsuranceBody(
        insuranceType: "Health Insurance",
        status: "Expired",
        policyNo: "Policy #98765432",
        coverageText: "Coverage",
        textOne: "Hospitalization",
        textTwo: "OutPatient Services",
        textThree: "Prescription Drugs",
        startDate: "Start Date: feb 01, 2023",
        endDate: " Expiry Date:Mar 15, 2025",
        onTapClaims: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewClaimsScreen(policy: PolicyType.health, claim: mockClaims,),
            ),
          );
        },
        viewClaimsText: "View Claims",
        onTapDocuments: () {
          Navigator.pushNamed(context, "/view_documents_health");
        },
        viewDocumentsText: "View Documents",
        statusColor: AppColors.expiredColor,
      ),
    );
  }
}
