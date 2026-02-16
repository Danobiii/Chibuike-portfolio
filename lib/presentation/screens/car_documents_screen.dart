import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class CarDocumentsScreen extends StatefulWidget {
  const CarDocumentsScreen({super.key});

  @override
  State<CarDocumentsScreen> createState() => _CarDocumentsScreenState();
}

class _CarDocumentsScreenState extends State<CarDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
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
              'Car Insurance Document',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 20.h),
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

class DocumentList extends StatelessWidget {
  final String documentName;
  final Icon fileIcon;
  final VoidCallback onTap;
  final String text;
  const DocumentList({
    super.key,
    required this.documentName,
    required this.onTap,
    required this.text,
    required this.fileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: ListTile(
        onTap: onTap,
        leading: fileIcon,
        title: Text(documentName),
        trailing: Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15.sp),
        ),
      ),
    );
  }
}
