import 'package:cv_app/sharedpreferences_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _text = TextEditingController();

  bool _validate = false;

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

    // New data to be added
    List<String> newData = [
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

    // Retrieve existing submissions
    List<String> existingData = prefs.getStringList('formData') ?? [];

    // Add new submission to the list
    existingData.add(newData.join('||'));

    // Save the updated list
    await prefs.setStringList('formData', existingData);
  }

  // @override
  // void dispose() {
  //   _controllerName.dispose();
  //   _controllerDesignation.dispose();
  //   _controllerPhoneNumber.dispose();
  //   _controllerEmail.dispose();
  //   _controllerAddress.dispose();
  //   _controllerSkill1.dispose();
  //   _controllerSkill2.dispose();
  //   _controllerSkill3.dispose();
  //   _controllerSkill4.dispose();
  //   _controllerSkill4.dispose();
  //   _controllerSkill5.dispose();
  //   _controllerLanguage1.dispose();
  //   _controllerLanguage2.dispose();
  //   _controllerLanguage3.dispose();
  //   _controllerSummary.dispose();
  //   _controllerEducation1.dispose();
  //   _controllerEducation2.dispose();
  //   _controllerJobtitle.dispose();
  //   _controllerEmployer.dispose();
  //   _controllerLocation.dispose();
  //   _controllerDate.dispose();
  //   _controllerDescription.dispose();
  //   _controllerHobbies.dispose();
  //   super.dispose();
  // }

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
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
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
                      TextField(
                        controller: _controllerName,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                          ),
                          labelText: 'Name',
                          errorText: _validate ? "value can't be empty" : null,
                        ),
                      ),
                      TextField(
                        controller: _controllerDesignation,
                        decoration:
                            const InputDecoration(labelText: 'Designation'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'CONTACT',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: _controllerPhoneNumber,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          labelText: 'Phone Number',
                        ),
                      ),
                      TextField(
                        controller: _controllerEmail,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email), labelText: 'Email'),
                      ),
                      TextField(
                        controller: _controllerAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.home),
                          labelText: 'Address',
                        ),
                      ),
                      const Text(
                        'SKILLS',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        controller: _controllerSkill1,
                        decoration: const InputDecoration(labelText: '1.'),
                      ),
                      TextField(
                        controller: _controllerSkill2,
                        decoration: const InputDecoration(labelText: '2.'),
                      ),
                      TextField(
                        controller: _controllerSkill3,
                        decoration: const InputDecoration(labelText: '3.'),
                      ),
                      TextField(
                        controller: _controllerSkill4,
                        decoration: const InputDecoration(labelText: '4.'),
                      ),
                      TextField(
                        controller: _controllerSkill5,
                        decoration: const InputDecoration(labelText: '5.'),
                      ),
                      const Text(
                        'LANGUAGE',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        controller: _controllerLanguage1,
                        decoration: const InputDecoration(labelText: '1.'),
                      ),
                      TextField(
                        controller: _controllerLanguage2,
                        decoration: const InputDecoration(labelText: '2.'),
                      ),
                      TextField(
                        controller: _controllerLanguage3,
                        decoration: const InputDecoration(labelText: '3.'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 18.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'SUMMARY',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        controller: _controllerSummary,
                        maxLines: 6,
                        decoration: const InputDecoration(),
                      ),
                      const Text(
                        'EDUCATION',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        controller: _controllerEducation1,
                        maxLines: 2,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.school),
                            labelText: 'High School +2'),
                      ),
                      TextField(
                        controller: _controllerEducation2,
                        maxLines: 2,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.school),
                            labelText: 'Bachelor Degree'),
                      ),
                      const Text(
                        'EXPERIENCES',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      const Text(
                        'Job Title',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextField(
                        controller: _controllerJobtitle,
                        decoration: const InputDecoration(),
                      ),
                      TextField(
                        controller: _controllerEmployer,
                        decoration: const InputDecoration(
                            labelText: 'Employer/Organization'),
                      ),
                      TextField(
                        controller: _controllerLocation,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.map), labelText: 'Location'),
                      ),
                      const Text(
                        'Date',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextField(
                        controller: _controllerDate,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            labelText: 'Month/Year'),
                      ),
                      TextField(
                        controller: _controllerDescription,
                        decoration:
                            const InputDecoration(labelText: 'Description'),
                      ),
                      const Text(
                        'HOBBIES',
                        style: TextStyle(fontSize: 20),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 2,
                      ),
                      TextField(
                        controller: _controllerHobbies,
                        maxLines: 3,
                        decoration: const InputDecoration(),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          _text.text.isEmpty
                              ? _validate = false
                              : _validate = false;
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
            ),
          ],
        ),
      ),
    );
  }
}
