import 'package:flutter/material.dart';
import 'package:royex_task/core/di.dart';
import 'package:royex_task/presentation/screens/home_screen.dart';
import 'package:royex_task/presentation/screens/landing_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Royex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}
