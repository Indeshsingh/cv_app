import 'package:cv_app/document_page.dart';
import 'package:cv_app/home_page1.dart';
import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomnavigationbarPage extends StatefulWidget {
  const BottomnavigationbarPage({super.key});

  @override
  State<BottomnavigationbarPage> createState() =>
      _BottomnavigationbarPageState();
}

class _BottomnavigationbarPageState extends State<BottomnavigationbarPage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomePage1(),
      const DocumentPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.edit_document),
        title: "Document",
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'CV Creator',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: ClipOval(child: Image.asset('assets/logo.png')),
        actions: const [
          Icon(Icons.share),
        ],
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        //confineInSafeArea: true,
        backgroundColor: Colors.blueGrey,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears.
        stateManagement: true, // Default is true.

        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),

        navBarStyle: NavBarStyle.style3, // Choose your preferred style
      ),
    );
  }
}
