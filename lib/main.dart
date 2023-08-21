import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_routers.dart';

void main() {
  runApp(const Laza());
}

class Laza extends StatelessWidget {
  const Laza({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters().router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
