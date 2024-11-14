import 'package:cologe/Courses.dart';
import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'Courses.dart';
class learn extends StatefulWidget {
  @override
  State<learn> createState() => _learnState();
}

class _learnState extends State<learn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          children: [
            Container(
              color: Colors.white70,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatItem(icon: FontAwesomeIcons.bolt, value: '2'),
                  StatItem(icon: FontAwesomeIcons.rectangleAd, value: '137'),
                  StatItem(icon: FontAwesomeIcons.heart, value: '5'),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  SectionTitle(
                      title: 'AI Research Skills',
                      icon: FontAwesomeIcons.circlePlay),
                  LessonItem(
                    icon: FontAwesomeIcons.fileCode,
                    title: 'The Research Process: Getting Started',
                    type: 'Lesson',
                    statusIcon: FontAwesomeIcons.check,
                  ),
                  LessonItem(
                    icon: FontAwesomeIcons.fileCode,
                    title: 'Research Planning with AI',
                    type: 'Lesson',
                    statusIcon: FontAwesomeIcons.check,
                  ),
                  QuizItem(
                    icon: FontAwesomeIcons.bullseye,
                    title: 'Practice',
                    xp: 'XP +5',
                  ),
                  LessonItem(
                    icon: FontAwesomeIcons.fileCode,
                    title: 'Interpreting Findings with AI',
                    type: 'Lesson XP +10',
                    buttonText: 'LEARN',

                  ),
                  LessonItem(
                    icon: FontAwesomeIcons.fileCode,
                    title: 'Communicating Results',
                    type: 'Lesson XP +10',
                    locked: true,
                  ),
                  LessonItem(
                    icon: FontAwesomeIcons.fileCode,
                    title: 'Market Research Report',
                    type: 'Lesson XP +10',
                    locked: true,
                  ),
                  QuizItem(
                    icon: FontAwesomeIcons.bullseye,
                    title: 'Quiz',
                    xp: 'XP +5',
                    locked: true,
                  ),
                  CertificateItem(),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Color(0xFF333333),
        //   selectedItemColor: Colors.white,
        //   unselectedItemColor: Colors.grey,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.book),
        //       label: 'Learn',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.users),
        //       label: 'Community',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.trophy),
        //       label: 'Leaderboard',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.circlePlus),
        //       label: 'Create',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(FontAwesomeIcons.user),
        //       label: 'Profile',
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final IconData icon;
  final String value;


  StatItem({required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color:Colors.deepPurple),
        SizedBox(width: 5),
        Text(value, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  SectionTitle({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurple),
        SizedBox(width: 10),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    );
  }
}

class LessonItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String type;
  final IconData? statusIcon;
  final String? buttonText;
  final bool locked;

  LessonItem({
    required this.icon,
    required this.title,
    required this.type,
    this.statusIcon,
    this.buttonText,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: locked ? Colors.white60 : Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          if (statusIcon != null) Icon(statusIcon, color: Colors.green),
          if (buttonText != null)
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Course()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(buttonText!,style: TextStyle(color: Colors.white),),
            ),
          if (locked) Icon(FontAwesomeIcons.lock, color: Colors.white),
        ],
      ),
    );
  }
}

class QuizItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String xp;
  final bool locked;

  QuizItem({
    required this.icon,
    required this.title,
    required this.xp,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: locked ? Colors.white60 :Colors.white60,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Text(xp, style: TextStyle(color: Colors.blueGrey, fontSize: 12)),
              ],
            ),
          ),
          if (locked) Icon(FontAwesomeIcons.lock, color: Colors.grey),
        ],
      ),
    );
  }
}

class CertificateItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Icon(FontAwesomeIcons.certificate,color: Colors.white,),
          SizedBox(height: 10),
          Text('Your Certificate is close',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          Text('You are doing great! Keep learning to unlock your certificate!',
              style: TextStyle(color: Colors.grey, fontSize: 14)),
        ],
      ),
    );
  }
}
