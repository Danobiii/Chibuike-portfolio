import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/routes/app_routes.dart';
import 'package:insurance_wallet/core/theme/theme_provider.dart';
import 'package:insurance_wallet/views/screens/home/car_documents_screen.dart';
import 'package:insurance_wallet/views/screens/home/car_insurance_policy_details.dart';
import 'package:insurance_wallet/views/screens/home/health_documents_screen.dart';
import 'package:insurance_wallet/views/screens/home/health_insurance_policy_details.dart';
import 'package:insurance_wallet/views/screens/home/mocked_documents_screen.dart';
import 'package:insurance_wallet/views/screens/home/policies_screen.dart';
import 'package:insurance_wallet/views/screens/home/splash_screen.dart';
import 'package:insurance_wallet/views/screens/home/travel_documents_screen.dart';
import 'package:insurance_wallet/views/screens/home/travel_policy_insurance_details.dart';

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
          AppRoutes.policiesScreen: (context) => PoliciesScreen(),
          AppRoutes.carDetails: (context) => CarInsurancePolicyDetails(),
          AppRoutes.viewDocumentsCar: (context) => CarDocumentsScreen(),
          AppRoutes.viewDocumentsHealth: (context) => HealthDocumentsScreen(),
          AppRoutes.viewDocumentsTravel: (context) => TravelDocumentsScreen(),

          AppRoutes.documentScreen: (context) => MockedDocumentsScreen(),
          AppRoutes.healthDetails: (context) => HealthInsurancePolicyDetails(),
          AppRoutes.travelDetails: (context) => TravelPolicyInsuranceDetails(),
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
