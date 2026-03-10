import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/resources/app_icons.dart';

class MockedDocumentsScreen extends StatefulWidget {
  const MockedDocumentsScreen({super.key});

  @override
  State<MockedDocumentsScreen> createState() => _MockedDocumentsScreenState();
}

class _MockedDocumentsScreenState extends State<MockedDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        leading: IconButton(
          icon: Icon(AppIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Policy Certificate",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "This is a mock document used for demo purposes.Real document viewing will be implemented later.",
            ),
          ],
        ),
      ),
    );
  }
}
