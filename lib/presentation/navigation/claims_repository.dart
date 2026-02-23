import 'package:insurance_wallet/domain/entities/claims.entity.dart';

final List<ClaimsEntity> mockClaims = [
  // getClaimsForPolicy(PolicyType type) {
  //   switch (type) {
  //     case PolicyType.health:
  //       return [
  ClaimsEntity(
    id: "CLM-001",
    accidentText: 'Accident Damage',
    filedText: 'January 18, 2026',
    status: 'Under Review',
    amount: '#2,000,000',
  ),
  ClaimsEntity(
    id: 'CLM-002',
    accidentText: 'Windscreen Repair',
    filedText: 'December 5, 2025',
    status: 'Approved',
    amount: '#2,000,000',
  ),
  ClaimsEntity(
    id: 'CLM-003',
    accidentText: 'Mirror Repair',
    filedText: 'December 8, 2025',
    status: 'Pending',
    amount: '#2,000,000',
  ),
];
    //   ];
    // case PolicyType.car:
    // case PolicyType.travel:
    //   return [];
//   }
// }
