import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/ui/policy_icon_color_mapper.dart';
import 'package:insurance_wallet/core/ui/policy_icon_mapper.dart';
import 'package:insurance_wallet/core/ui/policy_status_mapper.dart';
import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/presentation/navigation/insurance_details_navigation.dart';

class PolicyListWidget extends StatelessWidget {
  final PoliciesEntity entity;
  const PolicyListWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusColor = getStatusColor(entity.status);
    final iconColor = getIconColor(entity.policyTypeIcon);

    return InkWell(
      onTap: () => onPolicyTapped(context, entity),

      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: theme.colorScheme.onSurface),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ListTile(
              leading: Icon(
                getPolicyIcon(entity.policyTypeIcon),
                size: 40,
                color: iconColor,
              ),
              title: Text(
                entity.policyDesc,
                style: TextStyle(fontSize: 17, color: Colors.blue),
              ),
              trailing: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Text(
                  entity.status,
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                ),
              ),
            ),
            Divider(indent: 20, endIndent: 20),
            Padding(
              padding: EdgeInsetsGeometry.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(entity.policyNo),
                  SizedBox(height: 3.h),
                  Text(entity.expires),
                  SizedBox(height: 7.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
