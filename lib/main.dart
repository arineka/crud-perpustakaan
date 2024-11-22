import 'package:crud_perpustakaan/home_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://szcvxgqjjcxpofqkxboh.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN6Y3Z4Z3FqamN4cG9mcWt4Ym9oIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE3MjY2NDEsImV4cCI6MjA0NzMwMjY0MX0.wllvXj60z6OOilN2AuywDuOXZZh23mMkWZyxwgekMgs',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan',
      home: BookListPage(),
    );
  }
}

