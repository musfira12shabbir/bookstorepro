import 'package:flutter/material.dart';


class  Category extends StatefulWidget {
  const Category({super.key});


@override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category> {

  static const List<Widget> _widgetOptions = <Widget>[
    Text('UPDATE'),
    Text('DELETE'),
    Text('ADD'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
    child: Container(
width: double.infinity,

decoration: const BoxDecoration(
color: Colors.grey,
),
    )

    );
  }
}
