import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:we_chat/auth/splash_screen.dart';
// import 'auth/login_screen.dart';

late Size mq;

void main() {

  WidgetsFlutterBinding .ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'We Chat',
        theme: ThemeData(
            useMaterial3: false,
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              elevation: 1,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 19),
              backgroundColor: Colors.white,
            )),
        home: const SplashScreen());
        // home: const LoginScreen());
    // home: const HomeScreen());
  }
}
