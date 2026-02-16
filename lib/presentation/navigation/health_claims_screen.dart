// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:insurance_wallet/core/theme/app_colors.dart';
// import 'package:insurance_wallet/domain/entities/claims.entity.dart';
// import 'package:insurance_wallet/presentation/widgets/claim_card.dart';
// import 'package:insurance_wallet/resources/components/png_svg.dart';

// class HealthClaimsScreen extends StatefulWidget {
//   const HealthClaimsScreen({super.key});

//   @override
//   State<HealthClaimsScreen> createState() => _HealthClaimsScreenState();
// }

// class _HealthClaimsScreenState extends State<HealthClaimsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: AppColors.appBarColor,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back),
//         ),
//         title: Text(
//           "Claims",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,

//           children: [
//             Center(child: Image.asset(PngSvg.noClaimsLogo)),

//             SizedBox(height: 10.h),
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(
//                     vertical: 10.h,
//                     horizontal: 60.w,
//                   ),
//                   backgroundColor: AppColors.appBarColor,
//                 ),
//                 onPressed: () {},
//                 child: Text(
//                   "File a Claim",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.h),

//             ClaimCard(
//               claim: ClaimsEntity(
//                 claimText: 'claimText',
//                 accidentText: "accidentText",
//                 filedText: "filedText",
//                 statusText: "statusText",
//               ),
//             ),
//             SizedBox(height: 10.h),
//             ClaimCard(
//               claim: ClaimsEntity(
//                 claimText: "claimText",
//                 accidentText: "accidentText",
//                 filedText: "filedText",
//                 statusText: "statusText",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
