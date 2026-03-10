// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class AllClaimsScreen extends ConsumerStatefulWidget {
//   final theme = Theme.of(context);
//   const AllClaimsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("This Feature is Coming Soon"));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllClaimsScreen extends ConsumerStatefulWidget {
  const AllClaimsScreen({super.key});

  @override
  ConsumerState<AllClaimsScreen> createState() => _AllClaimsScreenState();
}

class _AllClaimsScreenState extends ConsumerState<AllClaimsScreen> {
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
