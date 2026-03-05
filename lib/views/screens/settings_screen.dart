import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/core/theme/theme_provider.dart';
import 'package:insurance_wallet/resources/components/app_icons.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeProvider);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        leading: IconButton(
          icon: Icon(AppIcons.back),
          onPressed: () {
            Navigator.popUntil(
              context,
              ModalRoute.withName('/policies_screen'),
            );
          },
        ),
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Appearance",
              style: TextStyle(
                color: theme.colorScheme.onSurface,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            SettingsOptions(
              theme: theme,
              isDarkMode: isDarkMode,
              text: 'Dark Mode',
              value: isDarkMode,
              onChanged: (value) {
                ref.read(themeProvider.notifier).toggleTheme();
              },
            ),
            SizedBox(height: 30.h),

            SettingsOptions(
              theme: theme,
              isDarkMode: isDarkMode,
              text: 'Reminders',
              value: isDarkMode,
            ),
            SizedBox(height: 30.h),

            Text(
              "About",
              style: TextStyle(
                color: theme.colorScheme.onSurface,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            SettingsOptions(
              theme: theme,
              isDarkMode: isDarkMode,
              text: 'Version 1.0.0',
              // value: isDarkMode,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsOptions extends StatelessWidget {
  final String text;
  final bool? value;
  final ValueChanged<bool>? onChanged;
  const SettingsOptions({
    super.key,
    required this.theme,
    this.isDarkMode,
    required this.text,
    this.value,
    this.onChanged,
  });

  final ThemeData theme;
  final bool? isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: theme.colorScheme.onSurface),
      ),
      child: ListTile(
        leading: Text(
          text,
          style: TextStyle(
            // color: theme.colorScheme.onSurface,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: value != null
            ? Switch(
                activeThumbColor: const Color.fromARGB(255, 7, 244, 15),
                value: value!,
                onChanged: onChanged,
              )
            : null,
      ),
    );
  }
}
