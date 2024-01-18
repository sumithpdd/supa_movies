import 'package:flutter/material.dart';
import 'package:supa_movies_app/pages/home_page.dart';

import 'data/initialise_supabase.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialiseSupabase.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supa Movies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
