import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/domain/entities/claims.entity.dart';

class ClaimCard extends StatelessWidget {
  final ClaimsEntity claim;

  const ClaimCard({super.key, required this.claim});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(color: const Color.fromARGB(153, 239, 231, 231)),
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              claim.claimText,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  claim.accidentText,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                    // color: statusColor,
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                  child: Text(claim.statusText),
                ),
              ],
            ),
            Text(claim.filedText),
          ],
        ),
      ),
    );
  }
}
