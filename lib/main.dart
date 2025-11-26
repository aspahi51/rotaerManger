
import 'package:flutter/material.dart';

import 'navigtion/montasser_router.dart';
import 'screnns/loginscrens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'نظام الطالب - منتصر',
      navigatorKey: MontasserRouter.navigatorKey,
      home: const LoginPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}