import 'package:flutter/material.dart';

import 'MyCodeBitsPage.dart';

class DiscussionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Create'),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.notifications),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      // drawer: Drawer(),
      body: Column(
        children: [
          Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('HOT TODAY'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                PostItem(
                  votes: '+9',
                  comments: '6',
                  title: 'super laggy',
                  tags: ['lag'],
                  time: '1 day',
                  views: '150',
                  userName: 'C Luna',
                  userImage: 'fff/profile_pic.jpg',
                ),
                PostItem(
                  votes: '+1',
                  comments: '7',
                  title: 'Question related backend',
                  tags: ['backend', 'question', 'webdevelopment'],
                  time: '1 day',
                  views: '53',
                  userName: 'FREEZO',
                  userImage: 'fff/profile_pic.jpg',
                ),
                // Add more PostItem widgets as needed
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCodeBitsPage()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Learn',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Community',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.leaderboard),
      //       label: 'Leaderboard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.create),
      //       label: 'Create',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      // ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String votes;
  final String comments;
  final String title;
  final List<String> tags;
  final String time;
  final String views;
  final String userName;
  final String userImage;

  PostItem({
    required this.votes,
    required this.comments,
    required this.title,
    required this.tags,
    required this.time,
    required this.views,
    required this.userName,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(votes),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(comments),
                  ),
                  SizedBox(width: 10),
                  Text(title),
                ],
              ),
              Row(
                children: [
                  Text(userName),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage(userImage),
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 5,
            children: tags.map((tag) => Chip(label: Text(tag))).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16),
                  SizedBox(width: 5),
                  Text(time),
                  SizedBox(width: 10),
                  Icon(Icons.visibility, size: 16),
                  SizedBox(width: 5),
                  Text(views),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


