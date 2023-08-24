
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:laza/core/utils/app_routers.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:laza/features/auth/data/firebase/fire_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Laza());
}

class Laza extends StatefulWidget {
  const Laza({super.key});

  @override
  State<Laza> createState() => _LazaState();
}

class _LazaState extends State<Laza> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        FireAuth().showSnackBar('User is currently signed out!');
      } else {
        FireAuth().showSnackBar('User is signed in!');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters().router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
