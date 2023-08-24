
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_routers.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
