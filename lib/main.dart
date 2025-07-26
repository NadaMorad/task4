import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'otp_verification_screen.dart';

import 'profile_screen.dart';
import 'books_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BooksListScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/otp': (context) => const OTPVerificationScreen(),

        '/profile': (context) => const ProfileScreen(),
        '/books_list': (context) => const BooksListScreen(),
      },
    );
  }
}
