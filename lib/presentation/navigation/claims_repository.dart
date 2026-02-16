import 'package:insurance_wallet/domain/entities/policies_entity.dart';
import 'package:insurance_wallet/domain/entities/claims.entity.dart';

List<ClaimsEntity> getClaimsForPolicy(PolicyType type) {
  switch (type) {
    case PolicyType.health:
      return [
        ClaimsEntity(
          claimText: "Claims #10245",
          accidentText: 'Accident Damage',
          filedText: 'January 18, 2026',
          statusText: 'Under Review',
          // statusColor: AppColors.inReviewColor,
        ),
        ClaimsEntity(
          claimText: "Claims #10245",
          accidentText: 'Windscreen Repair',
          filedText: 'December 5, 2025',
          statusText: 'Approved',
          // statusColor: AppColors.activeColor,
        ),
      ];
    case PolicyType.car:
    case PolicyType.travel:
      return [];
  }
}
