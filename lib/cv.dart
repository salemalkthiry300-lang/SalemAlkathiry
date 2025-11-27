import 'package:flutter/material.dart';

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blueGrey[100],
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/log.png'), // تأكد من وجود الصورة في المسار الصحيح
                  ),
                  Divider(),
                  Text(
                    'Your Name',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text(
                    'Developer',
                    style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                  ),
                  Divider(),
                  _buildContactRow('Email', 'example@gmail.com'),
                  Divider(),
                  _buildContactRow('Phone', '7777777'),
                  Divider(),
                  Text(
                    'Skills',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  _buildSkills(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }

  Widget _buildSkills() {
    final skills = [
      'Flutter Development',
      'Dart Programming',
      'UI/UX Design',
      'RESTful API Integration',
      'Git Version Control',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: skills.map((skill) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                Icon(Icons.check, color: Colors.green),
                SizedBox(width: 10),
                Text(skill),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}