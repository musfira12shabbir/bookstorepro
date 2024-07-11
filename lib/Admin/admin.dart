import 'package:flutter/material.dart';


class admin extends StatefulWidget {
  const admin({super.key});

  @override
  adminState createState() => adminState();
}

class adminState extends State<admin> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('user'),
    Text('category'),
    Text('feedback'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookstore'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
      ),

      drawer: Drawer(

      ),


      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'user',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'feedback',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
