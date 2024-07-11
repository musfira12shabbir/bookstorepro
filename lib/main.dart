import 'package:bookstoreproject/categorypage.dart';
import 'package:bookstoreproject/admin.dart';
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
      home: admin(),
    );
  }
}

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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

