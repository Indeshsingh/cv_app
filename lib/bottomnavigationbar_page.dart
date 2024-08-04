import 'package:cv_app/home_page.dart';
import 'package:flutter/material.dart';

class BottomnavigationbarPage extends StatefulWidget {
  const BottomnavigationbarPage({super.key});

  @override
  State<BottomnavigationbarPage> createState() =>
      _BottomnavigationbarPageState();
}

class _BottomnavigationbarPageState extends State<BottomnavigationbarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Resume',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: ClipOval(child: Image.asset('assets/logo.png')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_emergency), label: 'Contact')
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}