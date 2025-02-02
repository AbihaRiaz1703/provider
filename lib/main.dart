import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/count_provider.dart';
import 'package:providers/provider_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<CountProvider>(create: (_) => CountProvider())
    ], child: const pageOne());
  }
}
