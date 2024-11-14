import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size(20, 20),
            child: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.expand_circle_down_rounded),
                child: Text("PRACTICE"),
              ),
              Tab(
                icon: Icon(Icons.feedback),
                child: Text("FEED"),
              ),
            ]),
          ),
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                InviteSection(),
                Divider(
                  thickness: 20,
                  color: Colors.white,
                ),
                CodeCoachSection(),
                Divider(
                  thickness: 20,
                  color: Colors.white,
                ),
                CodeChallengeSection(),
                Divider(
                  thickness: 20,
                  color: Colors.white,
                ),
                ByTheCommunitySection(),
                Divider(
                  thickness: 20,
                  color: Colors.white,
                ),
                AskMeAnythingSection(),
              ],
            ),
          ),
          Feedback()
        ]),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final bool isActive;

  TabButton({required this.text, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.white70,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class InviteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Share the fun. Invite a friend!',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: Text(
              'INVITE NOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class CodeCoachSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Code Coach',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Practice by solving coding challenges & earn points',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CodeCoachItem(
                  imageUrl: 'fff/b.jpg',
                  title: 'Halloween',
                  difficulty: 'Medium',
                ),
                CodeCoachItem(
                  imageUrl: 'fff/h.jpg',
                  title: 'YouTube Link Finder',
                  difficulty: 'Medium',
                ),
                CodeCoachItem(
                  imageUrl: 'fff/d.jpg',
                  title: 'That\'s odd...',
                  difficulty: 'Medium',
                ),
                CodeCoachItem(
                  imageUrl: 'fff/e.jpg',
                  title: 'Hovercraft',
                  difficulty: 'Easy',
                ),
                CodeCoachItem(
                  imageUrl: 'fff/g.jpg',
                  title: 'Secret',
                  difficulty: 'Medium',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CodeCoachItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String difficulty;

  CodeCoachItem({
    required this.imageUrl,
    required this.title,
    required this.difficulty,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 50, height: 50),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            difficulty,
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class CodeChallengeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Code Challenge',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Choose your coding language and select an opponent to test your might',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "fff/f.jpg",
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'You',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "fff/e.jpg",
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Select Opponent',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text(
                'Start a Code Challenge',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ByTheCommunitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'By The Community',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Developed by and for the community',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CommunityItem(
                  imageUrl: 'fff/d.jpg',
                  title: 'Data Structures',
                ),
                CommunityItem(
                  imageUrl: 'fff/c.jpg',
                  title: 'Kotlin',
                ),
                CommunityItem(
                  imageUrl: 'fff/i.jpg',
                  title: 'Design Patterns',
                ),
                CommunityItem(
                  imageUrl: 'fff/b.jpg',
                  title: 'Algorithms',
                ),
                CommunityItem(
                  imageUrl: 'fff/j.jpg',
                  title: 'Python',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommunityItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  CommunityItem({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 50, height: 50),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.deepPurple),
          ),
        ],
      ),
    );
  }
}

class AskMeAnythingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ask Me Anything Series',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Learn what it takes from community leaders',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AMAItem(
                  imageUrl: 'fff/l.jpg',
                  title: 'AMA',
                ),
                AMAItem(
                  imageUrl: 'fff/m.jpg',
                  title: 'Kuba\'s AMA',
                ),
                AMAItem(
                  imageUrl: 'fff/n.jpg',
                  title: 'Janning\'s AMA',
                ),
                AMAItem(
                  imageUrl: 'fff/o.jpg',
                  title: 'David\'s AMA',
                ),
                AMAItem(
                  imageUrl: 'fff/l.jpg',
                  title: 'Chill',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AMAItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  AMAItem({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 50, height: 50),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF2b2b2b),
      // appBar: AppBar(
      //   title: Text('Activity Feed'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileSection(),
              SizedBox(height: 20),
              DiscoverPeersButton(),
              SizedBox(height: 20),
              ActivityFeedSection(),
              SizedBox(height: 20),
              MostRecentSection(),
              SizedBox(height: 20),
              DashboardSection(),
              SizedBox(height: 20),
              MoreRecentItemsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('fff/profile_pic.jpg'),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Abdulrhman Hamoud Naji Ali',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "What's going on?",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class DiscoverPeersButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: () {},
      child: Text(
        'DISCOVER PEERS',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class ActivityFeedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ACTIVITY FEED',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '🎓 Our Back to School Leaderboard is Live! Join NOW! 🎉',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Shake Off Summer Procrastination & Join the Fun!\nBe one of the top ten learners on our Exclusive BTS Leaderboard to win free Sololearn MAX access for 2 weeks. Join now or track your progress with the link!',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                'BACK-TO-SCHOOL LEADERBOARD',
                style: TextStyle(fontSize: 14, color: Colors.yellowAccent),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MostRecentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MOST RECENT',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        RecentItem(
          userName: 'Angelo Abi Hanna',
          userAction: 'replied to a comment "',
          timeAgo: '4 Days',
          content: 'Lennart Lang version 2.0 is here!',
          codeSnippet:
              '<!DOCTYPE html>\n<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>\n</body>...',
        ),
        RecentItem(
          userName: 'Asim Farheen',
          userAction: '',
          timeAgo: '1 day',
          content:
              'Don\'t forget that some things count more than other things.',
          quoteAuthor: '~ William Saroyan',
        ),
        RecentItem(
          userName: 'Angelo Abi Hanna',
          userAction: 'posted a new code "JavaScript Sort Array"',
          timeAgo: '4 Days',
          codeSnippet:
              '<!DOCTYPE html>\n<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>\n<input id="in1" type="text" readonly>\n<input id="in2" type="text" readonly>...',
        ),
      ],
    );
  }
}

class RecentItem extends StatelessWidget {
  final String userName;
  final String userAction;
  final String timeAgo;
  final String content;
  final String codeSnippet;
  final String quoteAuthor;

  RecentItem({
    required this.userName,
    required this.userAction,
    required this.timeAgo,
    this.content = '',
    this.codeSnippet = '',
    this.quoteAuthor = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('fff/e.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    userAction,
                    style: TextStyle(fontSize: 12, color: Colors.brown),
                  ),
                ],
              ),
              Spacer(),
              Text(
                timeAgo,
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          if (content.isNotEmpty) ...[
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
          ],
          if (quoteAuthor.isNotEmpty) ...[
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              quoteAuthor,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
          if (codeSnippet.isNotEmpty) ...[
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                codeSnippet,
                style: TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class DashboardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF3a3a3a),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DASHBOARD',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatItem(number: '1', label: 'VISITS THIS WEEK'),
              StatItem(number: '374', label: 'NEARBY LEARNERS'),
              StatItem(number: '#10', label: 'THIS WEEK'),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              '8 🔥 8/30 Current Streak',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String number;
  final String label;

  StatItem({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}

class MoreRecentItemsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecentItem(
          userName: 'Angelo Abi Hanna',
          userAction: 'posted a new code "JavaScript"',
          timeAgo: '4 months',
          codeSnippet:
              '<!DOCTYPE html>\n<html>\n<head>\n<title>Title</title>\n</head>\n<body>...',
        ),
        RecentItem(
          userName: 'Angelo Abi Hanna',
          userAction: 'posted a new code "JavaScript"',
          timeAgo: '4 months',
          codeSnippet:
              '<!DOCTYPE html>\n<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>...',
        ),
      ],
    );
  }
}
