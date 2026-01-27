import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/ui/policy_icon_mapper.dart';
import 'package:insurance_wallet/core/ui/policy_status_mapper.dart';
import 'package:insurance_wallet/domain/entities/policies_entity.dart';

class PolicyListWidget extends StatelessWidget {
  final PoliciesEntity entity;
  const PolicyListWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final statusColor = getStatusColor(entity.status);
    return Container(
      height: 140.h,
      padding: EdgeInsets.only(left: 10.w, right: 5.w, top: 20.h),
      decoration: BoxDecoration(
        border: BoxBorder.fromBorderSide(
          BorderSide(
            style: BorderStyle.solid,
            color: const Color.fromARGB(255, 224, 223, 223),
          ),
        ),
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(getPolicyIcon(entity.policyType), size: 40.sp),
              SizedBox(width: 40.w),
              Text(
                entity.policyDesc,
                style: TextStyle(color: Colors.blue, fontSize: 17.sp),
              ),
              SizedBox(width: 40.w),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: statusColor),
                  child: Text(
                    entity.status,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 10.h),
          SizedBox(height: 7.w),

          Text(entity.policyNo),
          SizedBox(height: 7.w),

          Text(entity.expires),
        ],
      ),
    );
  }
}
