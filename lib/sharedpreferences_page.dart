import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferencesPage extends StatefulWidget {
  const SharedpreferencesPage({super.key});

  @override
  State<SharedpreferencesPage> createState() => _SharedpreferencesPageState();
}

class _SharedpreferencesPageState extends State<SharedpreferencesPage> {
  List<String> _formData = [];

  @override
  void initState() {
    super.initState();
    _loadFormData();
  }

  void _loadFormData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Retrieve all submissions
    List<String> storedData = prefs.getStringList('formData') ?? [];

    setState(() {
      _formData = storedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: _formData.isEmpty
          ? const Center(child: Text('No data available'))
          : ListView.builder(
              itemCount: _formData.length,
              itemBuilder: (context, index) {
                final currentData = _formData[index].split('||');

                return Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      const SizedBox(height: 10),
                      Text(
                        ' ${currentData[0]}',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ${currentData[1]}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'SUMMARY',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      const SizedBox(height: 10),
                      Text(' ${currentData[13]}'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'CONTACT',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      Text(' ${currentData[2]}'),
                      Text(' ${currentData[3]}'),
                      Text(' ${currentData[4]}'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'EDUCATION',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      const SizedBox(height: 10),
                      Text(' ${currentData[14]}'),
                      Text(' ${currentData[15]}'),
                      const SizedBox(height: 10),
                      const Text(
                        'SKILLS',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(' ${currentData[5]}'),
                                Text(' ${currentData[6]}'),
                                Text(' ${currentData[7]}'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(' ${currentData[8]}'),
                                Text(' ${currentData[9]}'),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'EXPERIENCES',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      const SizedBox(height: 5),
                      const Text(
                        'Job Title',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(' ${currentData[16]}'),
                      Text(' ${currentData[17]}'),
                      Text(' ${currentData[18]}'),
                      const SizedBox(height: 10),
                      const Text(
                        'Date',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(' ${currentData[19]}'),
                      Text(' ${currentData[20]}'),
                      const SizedBox(height: 10),
                      const Text(
                        'HOBBIES',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      const SizedBox(height: 10),
                      Text(' ${currentData[21]}'),
                      const SizedBox(height: 10),
                      const Text(
                        'LANGUAGE',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Divider(height: 5, thickness: 2),
                      Text(' ${currentData[10]}'),
                      Text(' ${currentData[11]}'),
                      Text(' ${currentData[12]}'),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
