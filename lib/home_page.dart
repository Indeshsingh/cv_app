import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 8.0, right: 35),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/logo.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Designation'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 92),
                      child: Text(
                        'CONTACT',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 1, left: 8.0, right: 35),
                      child: Divider(
                        height: 5,
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Address',
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 10, right: 120),
                      child: Text(
                        'SKILLS',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: Divider(
                        height: 5,
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 10, right: 77),
                      child: Text(
                        'LANGUAGE',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: Divider(
                        height: 5,
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 95,
                      top: 8.0,
                    ),
                    child: Text(
                      'SUMMARY',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Divider(
                      height: 5,
                      thickness: 2,
                    ),
                  ),
                  TextField(
                    maxLines: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 80, top: 5.0),
                    child: Text(
                      'EDUCATION',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 2,
                  ),
                  TextField(
                    maxLines: 2,
                    decoration: InputDecoration(labelText: 'High School +2'),
                  ),
                  TextField(
                    maxLines: 2,
                    decoration: InputDecoration(labelText: 'Bachelor Degree'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 60, top: 10),
                    child: Text(
                      'EXPERIENCES',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 2,
                  ),
                  TextField(
                    maxLines: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 108, top: 10),
                    child: Text(
                      'HOBBIES',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Divider(
                    height: 5,
                    thickness: 2,
                  ),
                  TextField(
                    maxLines: 3,
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
