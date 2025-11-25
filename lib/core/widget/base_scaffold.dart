import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appbar;

  const BaseScaffold({
    super.key,
    required this.child,
    this.appbar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: child,
        )
      ),
    );
  }
}