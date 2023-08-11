import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobilePageLayout,
    required this.webPageLayout,
  });
  final Widget mobilePageLayout;
  final Widget webPageLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return (constraints.maxWidth > 930) ? webPageLayout : mobilePageLayout;
      },
    );
  }
}
