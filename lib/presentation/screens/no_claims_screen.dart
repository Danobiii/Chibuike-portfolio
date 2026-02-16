import 'package:flutter/material.dart';
import 'package:insurance_wallet/resources/components/png_svg.dart';

class NoClaimsScreen extends StatefulWidget {
  const NoClaimsScreen({super.key});

  @override
  State<NoClaimsScreen> createState() => _NoClaimsScreenState();
}

class _NoClaimsScreenState extends State<NoClaimsScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Center(
      child: Column(
        children: [
          Image.asset(PngSvg.noClaimsLogo),
          ElevatedButton(onPressed: () {}, child: Text("File a claim")),
        ],
      ),
    );
  }
}