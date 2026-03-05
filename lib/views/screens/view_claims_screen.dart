import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/utils/policy_status_mapper.dart';
import 'package:insurance_wallet/models/entities/claims.entity.dart';

import 'package:insurance_wallet/models/entities/policies_entity.dart';

import 'package:insurance_wallet/resources/components/app_icons.dart';
import 'package:insurance_wallet/resources/components/png_svg.dart';

class ViewClaimsScreen extends StatelessWidget {
  final List<ClaimsEntity> claim;

  final PolicyType policy;

  const ViewClaimsScreen({
    super.key,
    required this.claim,
    required this.policy,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(AppIcons.back),
        ),
        title: Text("My Claims"),
        centerTitle: false,
      ),
      body: claim.isEmpty
          ? _buildEmptyState(context)
          : _buildClaimsList(context),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 140.h),
        child: Column(
          children: [
            Image.asset(PngSvg.noClaimsLogo),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
              ),

              child: Text(
                "File a claim",
                style: TextStyle(color: theme.colorScheme.onPrimary),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClaimsList(BuildContext context) {
    // final statusColor = getStatusColor(dynamic);
    return ListView.builder(
      itemCount: claim.length,
      itemBuilder: (context, index) {
        final singleClaim = claim[index];
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: const Color.fromARGB(153, 239, 231, 231),
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            singleClaim.accidentText,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 5.w,
                            ),
                            decoration: BoxDecoration(
                              color: getStatusColor(singleClaim.status),
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                            child: Text(singleClaim.status),
                          ),
                        ],
                      ),
                      Divider(),

                      Text(singleClaim.filedText),
                      SizedBox(height: 5.h),
                      Text(
                        singleClaim.amount,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        );
      },
    );
  }
}
