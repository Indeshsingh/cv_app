import 'dart:convert'; // For Base64 encoding and decoding
import 'dart:io'; // For File handling
import 'package:flutter/material.dart';

class SharedpreferencesPage extends StatefulWidget {
  final String data; // Data passed from DocumentPage

  const SharedpreferencesPage({super.key, required this.data});

  @override
  State<SharedpreferencesPage> createState() => _SharedpreferencesPageState();
}

class _SharedpreferencesPageState extends State<SharedpreferencesPage> {
  late List<String> _formData;

  @override
  void initState() {
    super.initState();
    // Split the data passed from DocumentPage
    _formData = widget.data.split('||');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the profile photo
                    SizedBox(
                      width: 110,
                      height: 110,
                      child: ClipOval(
                        child: _getImageWidget(_formData[11]),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Contact',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' ${_formData[5]}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      ' ${_formData[6]}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      ' ${_formData[7]}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'DOB: ${_formData[3]}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Age: ${_formData[4]}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' ${_formData[0]} ${_formData[1]}',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ${_formData[2]}',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Summary',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        color: const Color.fromARGB(255, 229, 222, 219),
                        height: 100,
                        width: 240,
                        child: Text(
                          ' ${_formData[12]}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Experience',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _formData[10]
                            .split(' ')
                            .map((item) => Text(
                                  '- $item',
                                  style: const TextStyle(fontSize: 14),
                                ))
                            .toList(),
                      ),
                      const Text(
                        'Education',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ${_formData[8]}',
                        style: const TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 150.0),
                          child: Text(
                            'Skills',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          color: const Color.fromARGB(255, 229, 222, 219),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: _formData[9]
                                .split(' ')
                                .map((item) => Text(
                                      '- $item',
                                      style: const TextStyle(fontSize: 14),
                                    ))
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(right: 123.0),
                          child: Text(
                            'Hobbies',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 200,
                          color: const Color.fromARGB(255, 229, 222, 219),
                          child: Text(
                            ' ${_formData[13]}',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getImageWidget(String imageData) {
    if (imageData.startsWith('/')) {
      // It's a file path
      return Image.file(
        File(imageData),
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      );
    } else {
      try {
        // Try to decode the image data as Base64
        return Image.memory(
          base64Decode(imageData),
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        );
      } catch (e) {
        // If decoding fails, return a placeholder
        return const Icon(
          Icons.person,
          size: 100,
        );
      }
    }
  }
}
