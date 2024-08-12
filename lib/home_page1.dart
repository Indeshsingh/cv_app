import 'package:cv_app/document_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:intl/intl.dart'; // For formatting the date

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  // Controllers
  final _controllerName = TextEditingController();
  final _controllerMiddlename = TextEditingController();
  final _controllerLastname = TextEditingController();
  final _controllerDoB = TextEditingController();
  final _controllerAge = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPhoneNumber = TextEditingController();
  final _controllerAddress = TextEditingController();
  final _controllerEducation = TextEditingController();
  final _controllerSkillInput = TextEditingController();
  final _controllerExperienceInput = TextEditingController();
  final _controllerPhoto = TextEditingController();
  final _controllerSummary = TextEditingController();
  final _controllerHobbies = TextEditingController();

  // final _controllerSkills = TextEditingController();
  // final _controllerExperiences = TextEditingController();
  // Lists to store skills and experiences
  final List<String> _skills = [];
  final List<String> _experiences = [];

  // Image picker instance
  final picker = ImagePicker();

  // Save form data to shared preferences
  void _saveFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> newData = [
      _controllerName.text,
      _controllerMiddlename.text,
      _controllerLastname.text,
      _controllerDoB.text,
      _controllerAge.text,
      _controllerEmail.text,
      _controllerPhoneNumber.text,
      _controllerAddress.text,
      _controllerEducation.text,
      _skills.join(' '),
      _experiences.join(' '),
      _controllerPhoto.text,
      _controllerSummary.text,
      _controllerHobbies.text,
    ];

    List<String> existingData = prefs.getStringList('formData') ?? [];
    existingData.add(newData.join('||'));
    await prefs.setStringList('formData', existingData);
  }

  // Add skill to the list
  void _addSkill() {
    setState(() {
      if (_controllerSkillInput.text.isNotEmpty) {
        _skills.add(_controllerSkillInput.text);
        _controllerSkillInput.clear();
      }
    });
  }

  // Remove skill from the list
  void _removeSkill(String skill) {
    setState(() {
      _skills.remove(skill);
    });
  }

  // Add experience to the list
  void _addExperience() {
    setState(() {
      if (_controllerExperienceInput.text.isNotEmpty) {
        _experiences.add(_controllerExperienceInput.text);
        _controllerExperienceInput.clear();
      }
    });
  }

  // Remove experience from the list
  void _removeExperience(String experience) {
    setState(() {
      _experiences.remove(experience);
    });
  }

  // Pick image from camera or gallery
  Future<void> getPhoto(ImageSource source) async {
    if (source == ImageSource.camera) {
      var status = await Permission.camera.status;
      if (status.isDenied || status.isPermanentlyDenied) {
        status = await Permission.camera.request();
      }
    }

    if (await Permission.camera.isGranted) {
      final pickedFile = await picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _controllerPhoto.text = pickedFile.path;
        });
      }
    }
  }

  // Show date picker for Date of Birth
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        _controllerDoB.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  // Show picker for selecting image
  void _showPicker({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  getPhoto(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getPhoto(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, left: 17.0, right: 17.0, bottom: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _controllerName,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'FirstName',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerMiddlename,
                  decoration: const InputDecoration(
                      labelText: 'MiddleName', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerLastname,
                  decoration: const InputDecoration(
                      labelText: 'LastName', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        readOnly: true,
                        controller: _controllerDoB,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            labelText: 'Date of Birth',
                            border: OutlineInputBorder()),
                        onTap: () => _selectDate(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _controllerAge,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.numbers),
                              labelText: 'Age',
                              border: OutlineInputBorder()),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerEmail,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerPhoneNumber,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.call),
                      labelText: 'Phone Number',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.home),
                      labelText: 'Address',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerEducation,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      labelText: 'Education',
                      hintText: 'Highest Education',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),

                // Skills Input
                TextFormField(
                  controller: _controllerSkillInput,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.settings),
                    labelText: 'Skills',
                    hintText: 'Enter a skill and press +',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: _addSkill,
                    ),
                  ),
                  onFieldSubmitted: (value) => _addSkill(),
                ),
                const SizedBox(height: 10),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Wrap(
                        spacing: 6.0,
                        runSpacing: 6.0,
                        children: _skills.map((skill) {
                          return InputChip(
                            label: Text(skill),
                            onDeleted: () => _removeSkill(skill),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _controllerExperienceInput,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.work),
                      suffixIcon: IconButton(
                          onPressed: _addExperience,
                          icon: const Icon(Icons.add)),
                      labelText: 'Experience',
                      hintText: 'Enter a experience and press +'),
                  onFieldSubmitted: (value) => _addExperience(),
                ),

                const SizedBox(height: 10),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Wrap(
                        spacing: 6.0,
                        runSpacing: 6.0,
                        children: _experiences.map((experience) {
                          return InputChip(
                            label: Text(experience),
                            onDeleted: () => _removeExperience(experience),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  readOnly: true,
                  controller: _controllerPhoto,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.camera),
                      labelText: 'Photo',
                      border: OutlineInputBorder()),
                  onTap: () => _showPicker(context: context),
                ),

                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerSummary,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.notes_outlined),
                      labelText: 'Summary',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _controllerHobbies,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.thumb_up),
                      labelText: 'Hobbies',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.black)),
                  onPressed: () {
                    setState(() {
                      _saveFormData();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DocumentPage()));
                    });
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
