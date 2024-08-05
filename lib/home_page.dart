import 'package:cv_app/sharedpreferences_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllerName = TextEditingController();
  final _controllerDesignation = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerAddress = TextEditingController();
  final _controllerSkill1 = TextEditingController();
  final _controllerSkill2 = TextEditingController();
  final _controllerSkill3 = TextEditingController();
  final _controllerSkill4 = TextEditingController();
  final _controllerSkill5 = TextEditingController();
  final _controllerLanguage1 = TextEditingController();
  final _controllerLanguage2 = TextEditingController();
  final _controllerLanguage3 = TextEditingController();
  final _controllerSummary = TextEditingController();
  final _controllerEducation1 = TextEditingController();
  final _controllerEducation2 = TextEditingController();
  final _controllerJobtitle = TextEditingController();
  final _controllerEmployer = TextEditingController();
  final _controllerLocation = TextEditingController();
  final _controllerDate = TextEditingController();
  final _controllerDescription = TextEditingController();
  final _controllerHobbies = TextEditingController();

  void _saveFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> formData = [
      _controllerName.text,
      _controllerDesignation.text,
      _controllerPhoneNumber.text,
      _controllerEmail.text,
      _controllerAddress.text,
      _controllerSkill1.text,
      _controllerSkill2.text,
      _controllerSkill3.text,
      _controllerSkill4.text,
      _controllerSkill5.text,
      _controllerLanguage1.text,
      _controllerLanguage2.text,
      _controllerLanguage3.text,
      _controllerSummary.text,
      _controllerEducation1.text,
      _controllerEducation2.text,
      _controllerJobtitle.text,
      _controllerEmployer.text,
      _controllerLocation.text,
      _controllerDate.text,
      _controllerDescription.text,
      _controllerHobbies.text,
    ];
    await prefs.setStringList('formData', formData);
  }

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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerName,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerDesignation,
                        decoration:
                            const InputDecoration(labelText: 'Designation'),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerPhoneNumber,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerEmail,
                        decoration: const InputDecoration(labelText: 'Email'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerAddress,
                        decoration: const InputDecoration(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerSkill1,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerSkill2,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerSkill3,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerSkill4,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerSkill5,
                        decoration: const InputDecoration(),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerLanguage1,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerLanguage2,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerLanguage3,
                        decoration: const InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 95, top: 20.0),
                      child: Text(
                        'SUMMARY',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Divider(
                        height: 5,
                        thickness: 2,
                      ),
                    ),
                    TextField(
                      controller: _controllerSummary,
                      maxLines: 6,
                      decoration: const InputDecoration(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 80, top: 5.0),
                      child: Text(
                        'EDUCATION',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerEducation1,
                        maxLines: 2,
                        decoration:
                            const InputDecoration(labelText: 'High School +2'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerEducation2,
                        maxLines: 2,
                        decoration:
                            const InputDecoration(labelText: 'Bachelor Degree'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 60, top: 10),
                      child: Text(
                        'EXPERIENCES',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 120, top: 8.0),
                      child: Text(
                        'Job Title',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerJobtitle,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerEmployer,
                        decoration: const InputDecoration(
                            labelText: 'Employer/Organization'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerLocation,
                        decoration:
                            const InputDecoration(labelText: 'Location'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, right: 155),
                      child: Text(
                        'Date',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerDate,
                        decoration:
                            const InputDecoration(labelText: 'Month/Year'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerDescription,
                        decoration:
                            const InputDecoration(labelText: 'Description'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 108, top: 10),
                      child: Text(
                        'HOBBIES',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 35),
                      child: TextField(
                        controller: _controllerHobbies,
                        maxLines: 3,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _saveFormData();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SharedpreferencesPage()));
                        });
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
