import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyCodeBitsPage extends StatefulWidget {
  @override
  State<MyCodeBitsPage> createState() => _MyCodeBitsPageState();
}

class _MyCodeBitsPageState extends State<MyCodeBitsPage> {
  int _currentIndex = 0;

  void _onTabChanged(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose a language'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _buildLanguageButton(context, 'web', 'Web', Colors.orange),
                _buildLanguageButton(context, 'cpp', 'C++', Colors.blue),
                _buildLanguageButton(context, 'c', 'C', Colors.cyan),
                _buildLanguageButton(context, 'cs', 'C#', Colors.purple),
                _buildLanguageButton(context, 'java', 'Java', Colors.orangeAccent),
                _buildLanguageButton(context, 'kt', 'Kotlin', Colors.blueAccent),
                _buildLanguageButton(context, 'swift', 'Swift', Colors.deepOrange),
                _buildLanguageButton(context, 'py', 'Python', Colors.blueGrey),
                _buildLanguageButton(context, 'rb', 'Ruby', Colors.red),
                _buildLanguageButton(context, 'php', 'PHP', Colors.indigo),
                _buildLanguageButton(context, 'node', 'Node.js', Colors.lightGreen),
                _buildLanguageButton(context, 'go', 'Go', Colors.lightBlue),
                _buildLanguageButton(context, 'r', 'R', Colors.blue),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildLanguageButton(BuildContext context, String code, String name, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('You selected $name')),
          );
        },
        child: Row(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                code,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(

        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize:Size(20, 20),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.code),
                  child: Text("CODE"),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.ccDiscover),
                  child: Text("DISCUSS"),
                ),
              ],
              onTap: _onTabChanged,
            ),
          ),

          backgroundColor: Colors.white60,

        ),
        body: TabBarView(children: [
          Column(
            children: [
              // Container(
              //   color: Colors.blue,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       TextButton(
              //         onPressed: () {
              //
              //         },
              //         child: Text(
              //           'CODE',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 16,
              //           ),
              //         ),
              //       ),
              //       TextButton(
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => DiscussionPage()),
              //           );
              //         },
              //         child: Text(
              //           'DISCUSS',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 16,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                color: Colors.black38,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('MY CODE BITS'),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                          child: Text('All'),
                        onPressed: () {

                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    CodeItem(
                      title: 'greetin',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '7 months',
                      views: '1',
                      image: "images/A1.jpeg",
                    ),
                    CodeItem(
                      title: '3d login form',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '8 months',
                      views: '2',
                      image: "images/A2.jpeg",
                    ),
                    CodeItem(
                      title: 'yemen bird',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '9 months',
                      views: '2',
                      image: "images/A3.jpeg",
                    ),
                    CodeItem(
                      title: 'school',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '9 months',
                      views: '1',
                      image: "images/A4.jpeg",
                    ),
                    CodeItem(
                      title: 'telegram',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '9 months',
                      views: '14',
                      image: "images/A5.jpeg",
                    ),
                    CodeItem(
                      title: 'whatsApp',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '9 months',
                      views: '26',
                      image: "images/A6.jpeg",
                    ),
                    CodeItem(
                      title: 'calculater',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '1',
                      image: "images/A7.jpeg",
                    ),
                    CodeItem(
                      title: 'Abdulrhman',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '2',
                      image: "images/A8.jpeg",
                    ),
                    CodeItem(
                      title: 'school',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '3',
                      image: "images/A9.jpeg",
                    ),
                    CodeItem(
                      title: 'google',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '2',
                      image: "images/A10.jpeg",
                    ),
                    CodeItem(
                      title: 'whatsApp',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '0',
                      image: "images/A1.jpeg",
                    ),
                    CodeItem(
                      title: 'Youtube.real',
                      author: 'Abdulrhman Hamoud Naji Ali',
                      time: '10 months',
                      views: '2',
                      image: "images/A3.jpeg",
                    ),
                  ],
                ),
              ),

            ],

          ),
          DiscussionPage(username: 'Alatabi',
            content: 'How do you search your code-bits by name/ description (especially in mobile-devices)?',
            tags: ['byname', 'codebit', 'codebits', 'search'],
            time: '1 day',
            views: '71',)
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: _currentIndex == 0
              ? () {
            return _showLanguageDialog(context);

          }
              : () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => NewQuestionPage()));
            // Add your action here
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}

class CodeItem extends StatelessWidget {
  final String title;
  final String author;
  final String time;
  final String views;
  final String image;
  CodeItem({
    required this.title,
    required this.author,
    required this.time,
    required this.views,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(this.image),
            radius: 25,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.cyan,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        'web',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.thumb_up, size: 14, color: Colors.grey),
                    Text('0'),
                    SizedBox(width: 5),
                    Icon(Icons.lock, size: 14, color: Colors.grey),
                    SizedBox(width: 5),
                    Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    Text(time),
                    SizedBox(width: 5),
                    Icon(Icons.remove_red_eye, size: 14, color: Colors.grey),
                    Text(views),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.more_vert, color: Colors.grey),
        ],
      ),
    );
  }
}







class DiscussionPage extends StatelessWidget {
  late final String username;
  late final String content;
  late final List<String> tags;
  late final String time;
  late final String views;
  DiscussionPage({
    required this.username,
    required this.content,
    required this.tags,
    required this.time,
    required this.views,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Post(
            username: username,
            content: content,
            tags: tags,
            time: time,
            views: views,
          ),

          Post(
            username: 'Mohmmed',
            content: 'Could someone debug the code, the output should be: Hello My name is Mark',
            tags: ['comphrension', 'list'],
            time: '23 hrs',
            views: '46',
          ),
          Post(
            username: 'Zico',
            content: 'Is that available?',
            tags: ['codeplayground', 'html'],
            time: '1 day',
            views: '57',
          ),
          Post(
            username: 'Alhidri',
            content: 'Voting system',
            tags: ['<a>'],
            time: '1 day',
            views: '44',
          ),
          Post(
            username: 'Samina',
            content: 'Sololearn AI unavailable???',
            tags: ['ai', 'error', 'sololearn'],
            time: '1 day',
            views: '35',
          ),
          Post(
            username: 'ebtsam',
            content: 'This kind of language creates a negative and uncomfortable environment for other users [off-topic]',
            tags: ['bad', 'code', 'html', 'in', 'words'],
            time: '3 hrs',
            views: '24',
          ),
          Post(
            username: 'Slman',
            content: 'Certificate name',
            tags: ['help'],
            time: '1 day',
            views: '43',
          ),
          Post(
            username: 'Salem',
            content: 'I want to know',
            tags: ['rmoreno2298@gmail.com'],
            time: '16 hrs',
            views: '38',
          ),
          Post(
            username: 'Saeed',
            content: '[Solved] Could anyone spot out the error in my code? Search results yield unrelated stuff.',
            tags: ['c', 'char', 'pointer', 'static', 'strtok'],
            time: '1 day',
            views: '47',
          ),
          Post(
            username: 'Mona',
            content: 'Hello iam a student and I want to learn about c please help me',
            tags: ['c', 'helpme'],
            time: '1 day',
            views: '33',
          ),
          Post(
            username: 'Salh',
            content: 'vector of vector initialization and assignment',
            tags: ['c++', 'fill', 'initialization', 'resize', 'vector'],
            time: '10 hrs',
            views: '18',
          ),
          Post(
            username: 'Mahmood',
            content: 'Very problematic...',
            tags: ['sololearn'],
            time: '10 hrs',
            views: '25',
          ),
          Post(
            username: 'Ahmed',
            content: 'Where is the problem with the code?',
            tags: ['class', 'inheritance', 'python'],
            time: '11 hrs',
            views: '25',
          ),
          Post(
            username: 'Abdullh',
            content: 'Python',
            tags: ['functions', 'python'],
            time: '23 hrs',
            views: '33',
          ),
          Post(
            username: 'Ali',
            content: 'List is [1,2,3,4,5,6,7,8...]',
            tags: ['python'],
            time: '3 hrs',
            views: '11',
          ),
        ],
      ),
    );
  }
}
class fav extends StatefulWidget{

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFavorite = !_isFavorite;
        });
      },
      child: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 16,
        color: _isFavorite ? Colors.red : Colors.grey,
      ),
    );
  }
  }

class Post extends StatelessWidget {
  final String username;
  final String content;
  final List<String> tags;
  final String time;
  final String views;

  Post({required this.username, required this.content, required this.tags, required this.time, required this.views});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('fff/c.jpg'),
                ),
                SizedBox(width: 10),
                Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(content),
            SizedBox(height: 10),
            Wrap(
              spacing: 5,
              children: tags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.access_time, size: 16),
                    SizedBox(width: 5),
                    Text(time),
                    SizedBox(width: 10),
                    Icon(Icons.visibility, size: 16),
                    SizedBox(width: 5),
                    Text(views),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.reply, size: 16),
                    SizedBox(width: 10),
                    fav(),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class NewQuestionPage extends StatefulWidget {
  @override
  _NewQuestionPageState createState() => _NewQuestionPageState();
}

class _NewQuestionPageState extends State<NewQuestionPage> {
   String? _selectedItem;
  bool _showDropdown = true;
   String _questionTitle = '';
   String _questionBody = '';
   String _relevantTags = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('New Question'),
        leading:IconButton(
        onPressed: () {
          Navigator.pop(context);
          
        },
        icon:Icon(Icons.arrow_back),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('fff/profile_pic.jpg'),
                    radius: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Abdulrhman Hamoud Naji Ali',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.star, color: Colors.amber),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Question title',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _questionTitle = value;
                  });
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0/128',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Question body goes here...',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _questionBody = value;
                  });
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0/1024',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Relevant Tags',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _relevantTags = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _showDropdown = !_showDropdown;
                      });
                    },
                    child: Row(
                      children: [
                        if (_showDropdown)
                          DropdownButton<String>(
                            hint: Text("insert",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold ),),
                            value: _selectedItem,
                            items: <String>['Insert Code', 'Insert Post'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,style: TextStyle(color: Colors.black),),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _selectedItem = newValue!;
                              });
                            },
                          ),
                        // Icon(Icons.add, color: Colors.grey),
                        // SizedBox(width: 5),
                        // Text(
                        //   'Insert',
                        //   style: TextStyle(color: Colors.grey, fontSize: 16),
                        // ),
                        SizedBox(width: 150,),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DiscussionPage(
                                  username: 'Abdulrhman Hamoud Naji Ali',
                                  content: _questionBody,
                                  tags: _relevantTags.split(','),
                                  time: 'Just now',
                                  views: '0',
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'POST',
                            style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
        
                ],
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
