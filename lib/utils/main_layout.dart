import 'package:flutter/material.dart';
import 'package:mobile/widgets/bottom_navbar/index.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? floatButton;

  const MainLayout({
    Key? key,
    required this.child,
    this.appBar,
    this.floatButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: child),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: floatButton,
    );
  }
}
