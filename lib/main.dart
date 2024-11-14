import 'package:cologe/SololearnPro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'comminty.dart';
import 'leaderbord.dart';
import 'Learn.dart';
import 'settings.dart';
import 'MyCodeBitsPage.dart';
import 'Courses.dart';
import 'SololearnPro.dart';
import 'SearchForFriends.dart';
import 'package:cologe/start/StartApp.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(start());
}

class Sololearn extends StatefulWidget {
  @override
  State<Sololearn> createState() => _MyAppState();
}

class _MyAppState extends State<Sololearn> {
  int _currentindex = 0;
  List<Widget> body = [
    ProfilePage(),
    CommunityPage(),
    LeaderboardPage(),
    learn(),
    MyCodeBitsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "sololearn",
              style: TextStyle(color: Colors.blue[100]),
            ),
            //automaticallyImplyLeading: false,

            backgroundColor: Colors.teal,

            // leading: Icon(Icons.menu),
            actions: [
              IconButton(
                icon: const Icon(Icons.person_add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SearchForFriends();
                    },
                  ));
                },
              ),
              const SizedBox(width: 10),
              Stack(
                children: [
                  const Icon(Icons.notifications),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              const Icon(Icons.more_vert),
              const SizedBox(width: 10),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  accountName: Text('Abdulrhman Hamoud Naji Ali'),
                  accountEmail: Text('osama7798333@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("fff/profile_pic.jpg"),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF03A9F4),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.crop, color: Colors.blue),
                  title: const Text('Sololearn PRO',
                      style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SololearnPro();
                      },
                    ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.emoji_events, color: Colors.blue),
                  title: const Text('Leaderboard',
                      style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.person_add, color: Colors.blue),
                  title: const Text('Invite Friends',
                      style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {},
                ),
                const Divider(
                  color: Colors.blueGrey,
                  thickness: 20,
                ),
                ListTile(
                  leading: const Icon(Icons.star, color: Colors.blue),
                  title:
                      const Text('Rate', style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.feedback, color: Colors.blue),
                  title: const Text('Feedback',
                      style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.blue),
                  title: const Text('Settings',
                      style: TextStyle(color: Colors.black)),
                  tileColor: Colors.white,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ));
                  },
                ),
              ],
            ),
          ),
          //   endDrawer: Drawer(
          //   child: ListView(
          //     padding: EdgeInsets.zero,
          //     children: <Widget>[
          //       UserAccountsDrawerHeader(
          //         accountName: Text('Abdulrhman Hamoud Naji Ali'),
          //         accountEmail: Text('osama7798333@gmail.com'),
          //         currentAccountPicture: CircleAvatar(
          //           backgroundImage: AssetImage("fff/profile_pic.jpg"),
          //         ),
          //         decoration: BoxDecoration(
          //           color: Color(0xFF03A9F4),
          //         ),
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.crop, color: Colors.white),
          //         title: Text('Sololearn PRO',
          //             style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {},
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.emoji_events, color: Colors.white),
          //         title: Text('Leaderboard',
          //             style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {},
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.person_add, color: Colors.white),
          //         title: Text('Invite Friends',
          //             style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {},
          //       ),
          //       Divider(color: Colors.grey),
          //       ListTile(
          //         leading: Icon(Icons.star, color: Colors.white),
          //         title: Text('Rate', style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {},
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.feedback, color: Colors.white),
          //         title:
          //             Text('Feedback', style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {},
          //       ),
          //       ListTile(
          //         leading: Icon(Icons.settings, color: Colors.white),
          //         title:
          //             Text('Settings', style: TextStyle(color: Colors.white)),
          //         tileColor: Color(0xFF212121),
          //         onTap: () {
          //           Navigator.of(context, rootNavigator: true)
          //               .pushNamed('/settings');
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          body: body[_currentindex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.teal,
            currentIndex: _currentindex,
            onTap: (int newindex) {
              setState(() {
                _currentindex = newindex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.peopleGroup),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard),
                label: 'Leaderboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.book),
                label: 'Learn',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.code),
                label: 'Create',
              ),
            ],
            // currentIndex: new,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
          ),
        );
      }),
      routes: {
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _showAllCourses = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 450,
              height: 300,
              child: const Column(
                children: [
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("fff/profile_pic.jpg"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 15,
                          child: Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Abdulrhman Hamoud Naji Ali',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Yemen • Lvl 10',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Add your profile summary',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    '4 Followers • 5 Following',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle),
                              width: 80,
                              height: 100,
                              child: const Image(
                                  image: AssetImage(
                                "fff/profile_pic.jpg",
                              )),
                            ),
                            const SizedBox(width: 0),
                            const Text(
                              'Try PRO for free',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SololearnPro();
                              },
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text(
                            'START',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('STREAK'),
                        const SizedBox(height: 10),
                        ColorChangingAvatar(),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Current Streak'),
                                Text(
                                  '0 days',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Longest Streak'),
                                Text(
                                  '17 days',
                                  style: TextStyle(
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Streak Savers'),
                            const Text(
                              '0 of 3',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                            const SizedBox(width: 100),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                child: const Text(
                                  'GET STREAK SAVER',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('COURSES PROGRESS'),
                        const SizedBox(height: 10),
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.purple,
                            child: Text('C#'),
                          ),
                          title: Text('Introduction to C#'),
                          subtitle: Text(
                            'In progress',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        AnimatedCrossFade(
                          firstChild: Container(),
                          secondChild: const Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Text('AI'),
                                ),
                                title: Text('Write with AI'),
                                subtitle: Text(
                                  'In progress',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.redAccent,
                                  child: Text('FE'),
                                ),
                                title: Text('Front-end for Beginners'),
                                subtitle: Text(
                                  'In progress',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          crossFadeState: _showAllCourses
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst,
                          duration: const Duration(milliseconds: 500),
                        ),
                        const Divider(
                          endIndent: 30,
                          indent: 30,
                          thickness: 3,
                          color: Colors.blue,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _showAllCourses = !_showAllCourses;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              _showAllCourses ? 'LESS COURSES' : 'MORE COURSES',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CERTIFICATES'),
                        SizedBox(height: 10),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: Text('Java'),
                          ),
                          title: Text('Introduction to Java'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text('PY'),
                          ),
                          title: Text('Python Intermediate'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            child: Text('JS'),
                          ),
                          title: Text('JavaScript'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ACTIVITY'),
                        const SizedBox(height: 10),
                        const Center(
                          child:
                              Text('Code bits, Solutions, Posts and Questions'),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text(
                              'SEE ACTIVITY',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   //onTap:(BottomNavigationBarItem1) => CommunityPage(),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book),
      //       label: 'Learn',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Community',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.create),
      //       label: 'Leaderboard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.code),
      //       label: 'Create',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: 4,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      // ),
    );
  }
}

class ColorChangingAvatar extends StatefulWidget {
  @override
  _ColorChangingAvatarState createState() => _ColorChangingAvatarState();
}

class _ColorChangingAvatarState extends State<ColorChangingAvatar> {
  List<Color> _avatarColors = [
    Colors.green,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
    Colors.orange,
  ];

  void _changeColor(int index) {
    setState(() {
      if (_avatarColors[index] == Colors.green) {
        _avatarColors[index] = Colors.orange;
      } else {
        _avatarColors[index] = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => _changeColor(0),
          child: CircleAvatar(
            backgroundColor: _avatarColors[0],
            child: const Text('T'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(1),
          child: CircleAvatar(
            backgroundColor: _avatarColors[1],
            child: const Text('W'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(2),
          child: CircleAvatar(
            backgroundColor: _avatarColors[2],
            child: const Text('T'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(3),
          child: CircleAvatar(
            backgroundColor: _avatarColors[3],
            child: const Text('F'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(4),
          child: CircleAvatar(
            backgroundColor: _avatarColors[4],
            child: const Text('S'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(5),
          child: CircleAvatar(
            backgroundColor: _avatarColors[5],
            child: const Text('S'),
          ),
        ),
        GestureDetector(
          onTap: () => _changeColor(6),
          child: CircleAvatar(
            backgroundColor: _avatarColors[6],
            child: const Text('M'),
          ),
        ),
      ],
    );
  }
}
