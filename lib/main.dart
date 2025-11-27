import 'package:flutter/material.dart';
import 'ListView/ListView.builder and drawer.dart';
import 'ListView/ListView.dart';
import 'SingleChild.dart';
import 'bottombar/Indexpage.dart';
import 'cv.dart';
import 'textfild.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: 'Amiri',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationButton(
                  context,
                  'Single Child',
                  const Color.fromARGB(255, 158, 169, 168),
                  Icons.child_care,
                  SingleChild()),
              _buildNavigationButton(
                  context,
                  'CV',
                  const Color.fromARGB(255, 63, 54, 244),
                  Icons.picture_as_pdf,
                  CV()),
              _buildNavigationButton(
                  context,
                  'List',
                  const Color.fromARGB(255, 162, 23, 134),
                  Icons.list,
                  Listview()),
              _buildNavigationButton(context, 'ListView Builder', Colors.orange,
                  Icons.view_list, Listviewbuilder()),
              _buildNavigationButton(
                  context,
                  'Text Field',
                  const Color.fromARGB(255, 158, 172, 183),
                  Icons.text_fields,
                  Textfild()),
              _buildNavigationButton(
                  context,
                  'Bottom Nav',
                  const Color.fromARGB(255, 185, 22, 41),
                  Icons.navigation,
                  Indexpage()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButton(BuildContext context, String title, Color color,
      IconData icon, Widget page) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      elevation: 5,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon, color: Colors.white, size: 30),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
