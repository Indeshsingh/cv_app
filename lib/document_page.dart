// document_page.dart
import 'package:cv_app/sharedpreferences_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  List<String> _savedData = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Load data from SharedPreferences
  void _loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> data = prefs.getStringList('formData') ?? [];
    setState(() {
      _savedData = data;
    });
  }

  // Navigate to SharedpreferencesPage with selected data
  void _viewDetails(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SharedpreferencesPage(data: data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documents')),
      body: ListView.builder(
        itemCount: _savedData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Document ${index + 1}'),
              subtitle: Text(_savedData[index]
                  .split('||')[0]), // Display first field as a preview
              onTap: () => _viewDetails(_savedData[index]),
            ),
          );
        },
      ),
    );
  }
}
