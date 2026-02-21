import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/theme/theme_provider.dart';
import 'package:insurance_wallet/presentation/screens/car_documents_screen.dart';
import 'package:insurance_wallet/presentation/screens/car_insurance_policy_details.dart';
import 'package:insurance_wallet/presentation/screens/health_documents_screen.dart';
import 'package:insurance_wallet/presentation/screens/health_insurance_policy_details.dart';
import 'package:insurance_wallet/presentation/screens/mocked_documents_screen.dart';
import 'package:insurance_wallet/presentation/screens/policies_screen.dart';
import 'package:insurance_wallet/presentation/screens/splash_screen.dart';
import 'package:insurance_wallet/presentation/screens/travel_documents_screen.dart';
import 'package:insurance_wallet/presentation/screens/travel_policy_insurance_details.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        // initialRoute: "/splash",
        routes: {
          // '/splash': (context) => SplashScreen(),
          '/policies_screen': (context) => PoliciesScreen(),
          '/car_details': (context) => CarInsurancePolicyDetails(),
          '/view_documents_car': (context) => CarDocumentsScreen(),
          '/view_documents_health': (context) => HealthDocumentsScreen(),
          '/view_documents_travel': (context) => TravelDocumentsScreen(),

          '/documents_screen': (context) => MockedDocumentsScreen(),
          '/health_details': (context) => HealthInsurancePolicyDetails(),
          '/travel_details': (context) => TravelPolicyInsuranceDetails(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          //Light mode
          brightness: Brightness.light,
          colorScheme: ColorScheme.light(
            primary: Colors.blue,
            surface: Colors.white,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.dark(
            primary: Colors.blue,
            surface: Color(0xFF1E1E1E),
          ),
        ),
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        home: SplashScreen(),
      ),
    );
  }
}
