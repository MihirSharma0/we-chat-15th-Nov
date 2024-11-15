import 'package:flutter/material.dart';
import 'package:we_chat/auth/login_screen.dart';
import 'package:we_chat/main.dart';
import 'package:flutter/services.dart';
// import 'dart:developer';


// import 'package:we_chat/screens/home_screen.dart';
// import 'package:we_chat/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // WidgetsFlutterBinding .ensureInitialized();
  void initState() {
    super.initState();

    //for auto triggering animation
    Future.delayed(const Duration(milliseconds: 1500), () {
       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                 systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.white));
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const HomeScreen()));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Welcome to We Chat "),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: mq.height * .15,
            right: mq.width * .25,
            width: mq.width * .5,
            duration: const Duration(seconds: 1),
            child: Image.asset('assets/images/icon.png'),
          ),
          Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            child: const Text("Made in India with ❤️",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, 
              color: Colors.black87),
          ),
      )],
      ),
    );
  }
}
