import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insurance_wallet/presentation/policy/policy_provider.dart';
import 'package:insurance_wallet/presentation/widgets/policy_list_widget.dart';

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
        ],
      ),
      drawer: Drawer(),
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
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 7, 7, 82),
              shape: CircleBorder(),
              child: Icon(Icons.add, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
