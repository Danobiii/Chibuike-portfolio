import 'package:flutter/material.dart';

class AllDocumentsScreen extends StatelessWidget {
  const AllDocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        "This Feature is Coming Soon",
        style: TextStyle(color: theme.colorScheme.primary),
      ),
    );
  }
}
