import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/routes/app_routes.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/models/entities/policies_entity.dart';
import 'package:insurance_wallet/views/screens/home/view_claims_screen.dart';

class CarInsurancePolicyDetails extends StatelessWidget {
  const CarInsurancePolicyDetails({super.key});

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
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Policy Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(235, 237, 236, 236),
          ),
        ),
        actions: [],
      ),
      body: InsuranceBody(
        insuranceType: 'Car Insurance',
        status: 'Active',
        policyNo: 'Policy #12345678',
        coverageText: 'Coverage',
        textOne: 'Accident & Damage',
        textTwo: 'Liability Protection',
        textThree: 'Roadside Assistance',
        startDate: 'Start Date: Sep 20, 2024',
        endDate: 'Expiry Date ',
        onTapClaims: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ViewClaimsScreen(policy: PolicyType.car, claim: []),
            ),
          );
        },

        // onTapClaims: () {
        //   getClaimsForPolicy(PolicyType.car);
        // },
        viewClaimsText: 'View Claims',
        onTapDocuments: () {
          Navigator.pushNamed(context, AppRoutes.viewDocumentsCar);
        },
        viewDocumentsText: 'ViewDocuments',
        statusColor: AppColors.activeColor,
      ),
    );
  }
}

class InsuranceBody extends StatelessWidget {
  final String insuranceType;
  final String status;
  final String policyNo;
  final String coverageText;
  final String textOne;
  final String textTwo;
  final String textThree;
  final String startDate;
  final String endDate;
  final VoidCallback onTapClaims;
  final String viewClaimsText;
  final VoidCallback onTapDocuments;
  final String viewDocumentsText;
  final Color statusColor;

  const InsuranceBody({
    super.key,
    required this.insuranceType,
    required this.status,
    required this.policyNo,
    required this.coverageText,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.startDate,
    required this.endDate,
    required this.onTapClaims,
    required this.viewClaimsText,
    required this.onTapDocuments,
    required this.viewDocumentsText,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w, top: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                insuranceType,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(status, style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Text(policyNo),
          SizedBox(height: 20.h),

          Divider(),
          Text(
            coverageText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
          ),
          SizedBox(height: 15.h),
          Text(textOne),
          SizedBox(height: 10.h),
          Text(textTwo),
          SizedBox(height: 10.h),
          Text(textThree),
          SizedBox(height: 15.h),

          Divider(),
          SizedBox(height: 15.h),

          Text(startDate),
          SizedBox(height: 10.h),
          Text(endDate),
          SizedBox(height: 15.h),

          Divider(),
          SizedBox(height: 15.h),
          SizedBox(
            width: double.infinity,
            height: 50.h,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: onTapClaims,
              child: Text(
                viewClaimsText,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color.fromARGB(239, 245, 243, 243),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: double.infinity,
            height: 50.h,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: onTapDocuments,
              child: Text(
                viewDocumentsText,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color.fromARGB(239, 245, 243, 243),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
