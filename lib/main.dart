import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/account_management_screen.dart';
import 'screens/notification_management_screen.dart';

void main() {
  runApp(ResponsoApp());
}

class ResponsoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responso App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash', // Rute awal diubah ke splash
      routes: {
        '/splash': (context) => SplashScreen(), // Rute untuk Splash Screen
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/profile': (context) => ProfileScreen(),
        '/account_management': (context) => AccountManagementScreen(),
        '/notification_management': (context) => NotificationManagementScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToRegister(); // Navigasi ke Register
  }

  void _navigateToRegister() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(
          context, '/register'); // Navigasi ke Register setelah 5 detik
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'), // Placeholder untuk gambar logo
          ],
        ),
      ),
    );
  }
}
