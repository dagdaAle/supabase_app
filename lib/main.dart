import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'home_page.dart'; // importa il file home_page.dart
import 'login_page.dart';
import 'register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Supabase.initialize(
    url: 'https://uvmocgmyioxtltocgnzi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV2bW9jZ215aW94dGx0b2NnbnppIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODMyODA2MDUsImV4cCI6MTk5ODg1NjYwNX0.a0kuo0Cz2cwdYzBY0P0-M9IGnpwzquVLZNr67Z1MyJ8',
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LoginPage(), // utilizza la classe HomePage dal file home_page.dart
    );
  }
}
