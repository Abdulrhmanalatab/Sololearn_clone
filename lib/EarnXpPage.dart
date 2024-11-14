import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EarnXpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InviteCard(),
                SizedBox(height: 20),
                TaskCard(task: 'Complete a lesson', xp: '+10 XP'),
                TaskCard(task: 'Achieve your daily Learning Goal', xp: '+6 XP'),
                TaskCard(task: 'Solve a Code Coach', xp: '+5 XP'),
                TaskCard(task: 'Win a Code Challenge', xp: '+5 XP'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InviteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(
            FontAwesomeIcons.handsHoldingChild,
            color: Colors.teal,
          ),
          // Image(
          //   image: AssetImage("fff/a.jpg"),
          //   height: 50,
          //   width: 50,
          // ),
          SizedBox(height: 10),
          Text(
            'Double your XP for one week by inviting a friend!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'You\'ll enjoy 7 days of double XP once your friend completes 2 lessons.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1e90ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              'SHARE INVITE LINK',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String task;
  final String xp;

  TaskCard({required this.task, required this.xp});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            task,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                xp,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
