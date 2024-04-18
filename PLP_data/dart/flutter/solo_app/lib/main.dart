import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solo portfolio in dart!'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutSection(),
            SizedBox(height: 16.0),
            TechnologySection(),
            SizedBox(height: 16.0),
            ProjectsSection(),
            SizedBox(height: 16.0),
            SkillsetSection(),
          ],
        ),
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          'Hello, welcome to my web Portfolio\nMy name is Solomon Ondula Omusinde\n\nAvailable for hire\nProfessional Software Developer\nBirthday: 30 November 1996\nWebsite: Click to visit\nPhone: +254 792 352 745\nCity: Nairobi, Kenya\nAge: 27\nDegree: Bsc(Mathematics)\nFreelance: Available\n\nProfile\nI am an organized and a meticulous individual seeking an entry-level position in the fields of either Mathematics, Data science or software development. I have built strong data analyzing and problem solving skills and have cultivated an ability to handle complex projects. I am innovative, creative and willing to contribute ideas and learn new things.\n',
          style: TextStyle(fontSize: 16.0),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}

class TechnologySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Technology',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          'Proficient in machine learning and time series algorithms, understand data structures experienced software engineer\npreferred languages (python, sql, dart, css, html, linux terminal, ) Additionally, I can manage operating systems installations, computer hardware troubleshooting, I can handle Structured Query Language(SQL) projects, I am good at operating Linux operating systems and I understand probability and statistical inference techniques.\n',
          style: TextStyle(fontSize: 16.0),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          'Calories tracker app - Track your daily calorie intake and monitor your progress.\nQuestion and answers app - A platform for users to ask and answer questions on various topics.\nChess ladder - Challenge other players and climb the chess ladder. (Link to come soon)\nMusic app - Link coming soon\n',
          style: TextStyle(fontSize: 16.0),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}

class SkillsetSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skillset',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          'Front-end languages: HTML (Expert), CSS (Advanced), Javascript (Intermediate)\nBack-end: Python(Advanced), Dart(Intermediate), SQL(Proficient), bash(Basic)\nVersion Control: Git(Expert) and Github(Expert)\nFrameworks: Flask(Advanced), Flutter(Intermediate), Django(Beginner)\n',
          style: TextStyle(fontSize: 16.0),
        ),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Click Me'),
        ),
      ],
    );
  }
}
