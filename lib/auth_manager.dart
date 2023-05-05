import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthManager {
  final _supabase = Supabase.instance.client;

  Future<String?> signUp(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    ); // il metodo signUp richiede un parametro "password"
  }

  Future<String?> signIn(String email, String password) async {
    final response = await _supabase.auth.signInWithPassword(
        email: email,
        password:
            password); // il metodo signIn richiede un parametro "password"
  }
}
