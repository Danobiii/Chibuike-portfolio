import 'package:flutter/material.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/resources/png_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/controllers/splashscreen_controllers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController _splashScreen = SplashController();
  void _getStartedButton() {
    _splashScreen.getStarted(context);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsetsGeometry.only(top: 150.h)),
              Image.asset(PngSvg.logo, height: 170.h, width: 170.w),
              SizedBox(height: 20.h),
              Text(
                "Insurance wallet",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "All your policies in one place",
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
              SizedBox(height: 170.h),
              ElevatedButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: _getStartedButton,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color.fromARGB(255, 3, 74, 132),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
