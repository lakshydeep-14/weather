import 'package:flutter/material.dart';
import '../core/widgets/app_layout.dart';
import 'desktop_view/desktop_view.dart';
import 'mobile_view/mobile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const AppContentView(
        mobile: MobileView(),
        desktop: DesktopView(),
      );
    });
  }
}
