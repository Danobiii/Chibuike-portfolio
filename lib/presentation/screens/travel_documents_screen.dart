import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/presentation/screens/car_documents_screen.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class TravelDocumentsScreen extends StatefulWidget {
  const TravelDocumentsScreen({super.key});

  @override
  State<TravelDocumentsScreen> createState() => _TravelDocumentsScreenState();
}

class _TravelDocumentsScreenState extends State<TravelDocumentsScreen> {
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
          "Documents",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w, top: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Travel Insurance Document',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 20.h),
            DocumentList(
              documentName: "Policy Certificate",
              onTap: () {
                Navigator.pushNamed(context, "/documents_screen");
              },
              text: "View",
              fileIcon: Icon(AppIcons.documentIcon),
            ),
            SizedBox(height: 10.h),

            DocumentList(
              documentName: 'Insurance Schedule.pdf',
              onTap: () {
                Navigator.pushNamed(context, "/documents_screen");
              },
              text: 'View',
              fileIcon: Icon(AppIcons.documentIcon),
            ),
            SizedBox(height: 10.h),

            DocumentList(
              documentName: 'Policy Certificate.pdf',
              onTap: () {
                Navigator.pushNamed(context, "/documents_screen");
              },
              text: 'View',
              fileIcon: Icon(AppIcons.documentIcon),
            ),
            SizedBox(height: 10.h),

            DocumentList(
              documentName: 'Policy Certificate.pdf',
              onTap: () {
                Navigator.pushNamed(context, "/documents_screen");
              },
              text: 'View',
              fileIcon: Icon(AppIcons.documentIcon),
            ),
          ],
        ),
      ),
    );
  }
}
