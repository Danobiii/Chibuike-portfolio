import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/theme/app_colors.dart';
import 'package:insurance_wallet/presentation/policy/policy_provider.dart';
import 'package:insurance_wallet/presentation/widgets/policy_list_widget.dart';
import 'package:insurance_wallet/resources/components/png_svg.dart';

class PoliciesScreen extends ConsumerStatefulWidget {
  const PoliciesScreen({super.key});

  @override
  ConsumerState<PoliciesScreen> createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends ConsumerState<PoliciesScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(policyProvider.notifier).fetchPolicy();
    });
    ref.listenManual(policyProvider, (previous, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("No data fetched")));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(policyProvider);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 3, 74, 132),
        title: Text("My policies", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Image.asset(PngSvg.logo, height: 50.h, width: 50.w),
                  Text(
                    "Insurance wallet",
                    style: TextStyle(
                      color: AppColors.appBarColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListOptions(
              icon: Icons.policy,
              text: 'My Policies',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.assignment,
              text: 'Claims',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.account_balance_wallet,
              text: 'Wallet',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.description,
              text: 'Documents',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.notifications,
              text: 'Notifications',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.contact_support_rounded,
              text: 'Support',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.account_circle_rounded,
              text: 'Profile',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.settings,
              text: 'Settings',

              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            ListOptions(
              icon: Icons.gavel,
              text: 'Legal',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
            Divider(indent: 30, endIndent: 30),
            ListOptions(
              icon: Icons.logout,
              text: 'Logout',
              textColor: const Color.fromARGB(66, 10, 5, 1),
              iconColoring: AppColors.appBarColor,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),

        child: Column(
          children: [
            SizedBox(height: 30.h),
            if (state.isLoading)
              const Center(child: CircularProgressIndicator()),
            if (state.data != null)
              Expanded(
                child: ListView(
                  children: state.data!.map((entity) {
                    return PolicyListWidget(entity: entity);
                  }).toList(),
                ),
              ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 50, color: Colors.blue),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt, size: 50),
            label: "Claims",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy, size: 50),
            label: "Documents",
          ),
        ],
      ),
    );
  }
}

class ListOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color iconColoring;
  final VoidCallback onTap;
  const ListOptions({
    super.key,
    required this.icon,
    required this.text,
    required this.textColor,
    required this.iconColoring,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      iconColor: iconColoring,
      onTap: onTap,
      title: Text(
        text,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
