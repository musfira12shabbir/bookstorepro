
import 'dart:async';

import 'package:bookstoreproject/main_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavbarScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState 
    Timer(
      const Duration(milliseconds: 2000),()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const NavbarScreen(),))
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         width: double.infinity,

          decoration: const BoxDecoration(
             color: Colors.grey,
            image: DecorationImage(

              image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/032/325/096/small/bookshelf-isolated-on-transparent-background-file-cut-out-ai-generated-png.png"),
            ),
          ),
        ),
      ),
    );
  }
}
