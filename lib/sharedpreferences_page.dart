import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferencesPage extends StatefulWidget {
  const SharedpreferencesPage({super.key});

  @override
  State<SharedpreferencesPage> createState() => _SharedpreferencesPageState();
}

class _SharedpreferencesPageState extends State<SharedpreferencesPage> {
  List<String> _formdata = [];

  @override
  void initState() {
    super.initState();
    _loadFormdata();
  }

  void _loadFormdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _formdata = prefs.getStringList('formData') ?? [];
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
      // body: Center(
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: _formdata.length,
      //           itemBuilder: (context, index) {
      //             return ListTile(
      //               title: Text(_formdata[index]),
      //             );
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
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
                        child: Text(' ${_formdata[0]},')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 35),
                        child: Text(' ${_formdata[1]}')),
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
                        padding: const EdgeInsets.only(left: 8.0, right: 105),
                        child: Text(
                          ' ${_formdata[2]}',
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 30),
                        child: Text(' ${_formdata[3]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 75),
                        child: Text(' ${_formdata[4]}')),
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
                        padding: const EdgeInsets.only(left: 8.0, right: 125),
                        child: Text(' ${_formdata[5]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 90),
                        child: Text(' ${_formdata[6]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 140),
                        child: Text(' ${_formdata[7]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 35),
                        child: Text(' ${_formdata[8]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 35),
                        child: Text(' ${_formdata[9]}')),
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
                        padding: const EdgeInsets.only(left: 8.0, right: 145),
                        child: Text(' ${_formdata[10]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 142),
                        child: Text(' ${_formdata[11]}')),
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 138),
                        child: Text(' ${_formdata[12]}')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text(' ${_formdata[13]}'),
                    const Text(
                      'EDUCATION',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(' ${_formdata[14]}'),
                    Text(' ${_formdata[15]}'),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'EXPERIENCES',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Job Title',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(' ${_formdata[16]}'),
                    Text(' ${_formdata[17]}'),
                    Text(' ${_formdata[18]}'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Date',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(' ${_formdata[19]}'),
                    Text(' ${_formdata[20]}'),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'HOBBIES',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Divider(
                      height: 5,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(' ${_formdata[21]}'),
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
