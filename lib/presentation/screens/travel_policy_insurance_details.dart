import 'package:flutter/material.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/presentation/navigation/claims_repository.dart';
import 'package:insurance_wallet/presentation/screens/car_insurance_policy_details.dart';
import 'package:insurance_wallet/presentation/screens/view_claims_screen.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class TravelPolicyInsuranceDetails extends StatefulWidget {
  const TravelPolicyInsuranceDetails({super.key});

  @override
  State<TravelPolicyInsuranceDetails> createState() =>
      _TravelPolicyInsuranceDetailsState();
}

class _TravelPolicyInsuranceDetailsState
    extends State<TravelPolicyInsuranceDetails> {
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
        insuranceType: "Travel Insurance",
        status: "In Review",
        policyNo: "Policy #56789012",
        coverageText: "Coverage",
        textOne: "Trip Cancellation",
        textTwo: "Emergency Medical",
        textThree: "Baggage Loss",
        startDate: "Start Date: Dec 15, 2023",
        endDate: " Expiry Date:Jan 10, 2024",
        onTapClaims: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewClaimsScreen(
                policy: PolicyType.travel,
                claim: mockClaims,
              ),
            ),
          );
        },
        viewClaimsText: "View Claims",
        onTapDocuments: () {
          Navigator.pushNamed(context, "/view_documents_travel");
        },
        viewDocumentsText: "View Documents",
        statusColor: AppColors.inReviewColor,
      ),
    );
  }
}
