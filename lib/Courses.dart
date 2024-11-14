import 'package:flutter/material.dart';
import 'package:cologe/Learn.dart';

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePageState(),
    );
  }
}

class MyHomePageState extends StatelessWidget {
  //   with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 10, vsync: this);
  // }
  //
  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: Colors.grey),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => learn()),
              );
            },
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.comment, color: Colors.grey),
                SizedBox(width: 4),
                Text('0', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 16),
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 4),
                Text('5', style: TextStyle(color: Colors.red)),
                SizedBox(width: 16),
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: TabBar(
              //controller: _tabController,
              indicator: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: '1'),
                Tab(text: '2'),
                Tab(text: '3'),
                Tab(text: '4'),
                Tab(text: '5'),
                Tab(text: '6'),
                Tab(text: '7'),
                Tab(text: '8'),
                Tab(text: '9'),
                Tab(text: '10'),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'fff/b.jpg',
                    width: 60,
                    height: 60,
                  ),
                  Image.asset(
                    'fff/d.jpg',
                    width: 60,
                    height: 60,
                  ),
                  Image.asset(
                    'fff/e.jpg',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "In today's data-driven world, interpreting data accurately is key to making informed decisions. GenAI can help you quickly analyze both quantitative and qualitative data, uncovering insights that might otherwise take much longer to identify.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Page2(),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            color: Colors.deepOrange,
          ),
          Container(
            color: Colors.cyan,
          ),
          LetsGo(),
          LessonCompletedScreen(),
        ]),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            height: 850,
            decoration: BoxDecoration(
              color: Colors.white60,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Content(),
                SizedBox(
                  height: 40,
                ),
                ChatSection(),
                SizedBox(
                  height: 15,
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.close, size: 24),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 8,
      color: Colors.grey[300],
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'AI can quickly read and summarize key points from your qualitative data.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87),
          ),
          SizedBox(height: 8),
          Text(
            'Use the AI chat to extract insights from the employee surveys',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

class ChatSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'AI CHAT',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          ChatMessage('What are some common themes from the survey responses?'),
          ChatMessage('Tell me about this survey data'),
          SizedBox(height: 350),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write a prompt',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;

  ChatMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        message,
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'CONTINUE',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class LetsGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.9,
            //height: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Text(
                  "Let's recap",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Great work! In this lesson, you use AI to:',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.yellow),
                      title: RichText(
                        text: TextSpan(
                          text: 'analyze ',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'quantitative',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' data'),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.yellow),
                      title: RichText(
                        text: TextSpan(
                          text: 'analyze ',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'qualitative',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' survey data'),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.yellow),
                      title: RichText(
                        text: TextSpan(
                          text: 'analyze ',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'interview transcripts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 220),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LessonCompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 50.0,
              ),
              SizedBox(height: 20.0),
              Text(
                'Lesson completed!',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              Text(
                'You’ve just learnt Interpreting Findings with AI.\nDon’t forget to test your knowledge with Code Coaches and Challenges!',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 350),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
