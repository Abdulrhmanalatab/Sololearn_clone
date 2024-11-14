import 'package:cologe/main.dart';
import 'package:flutter/material.dart';

class SearchForFriends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiscoverPeersPage(),
    );
  }
}

class DiscoverPeersPage extends StatefulWidget {
  @override
  _DiscoverPeersPageState createState() => _DiscoverPeersPageState();
}

class _DiscoverPeersPageState extends State<DiscoverPeersPage> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> suggestions = [
    {
      'name': 'Ali',
      'followers': '30.5K Followers',
      'level': 'Level 17',
      'badge': 'Mentor',
      'image': 'images/A1.jpeg',
    },
    {
      'name': 'Ahmed',
      'followers': '29.5K Followers',
      'level': 'Level 16',
      'badge': '',
      'image': 'images/A2.jpeg'
    },
    {
      'name': 'Alhosain',
      'followers': '27.5K Followers',
      'level': 'Level 21',
      'badge': 'Mentor',
      'image': 'images/A3.jpeg'
    },
    {
      'name': 'Slman',
      'followers': '21.8K Followers',
      'level': 'Level 17',
      'badge': 'Mentor',
      'image': 'images/A4.jpeg'
    },
    {
      'name': 'Moath',
      'followers': '19.7K Followers',
      'level': 'Level 16',
      'badge': '',
      'image': 'images/A5.jpeg'
    },
    {
      'name': 'Smartia',
      'followers': '15.3K Followers',
      'level': 'Level 17',
      'badge': '',
      'image': 'images/A6.jpeg'
    },
    {
      'name': 'Lamia',
      'followers': '14.3K Followers',
      'level': 'Level 16',
      'badge': 'Mentor',
      'image': 'images/A7.jpeg'
    },
    {
      'name': 'Mohamad',
      'followers': '11.7K Followers',
      'level': 'Level 16',
      'badge': 'Mentor',
      'image': 'images/A8.jpeg'
    },
    {
      'name': 'Eslam',
      'followers': '8.7K Followers',
      'level': 'Level 16',
      'badge': 'PRO',
      'image': 'images/A9.jpeg'
    },
    {
      'name': 'Tom',
      'followers': '7.5K Followers',
      'level': 'Level 16',
      'badge': 'PRO',
      'image': 'images/A10.jpeg'
    },
    {
      'name': 'Themas',
      'followers': '6.7K Followers',
      'level': 'Level 17',
      'badge': '',
      'image': 'images/A1.jpeg'
    },
    {
      'name': 'Aian',
      'followers': '6.6K Followers',
      'level': 'Level 16',
      'badge': '',
      'image': 'images/A5.jpeg'
    },
  ];

  late List<Map<String, dynamic>> filteredSuggestions;

  @override
  void initState() {
    super.initState();
    filteredSuggestions = suggestions;
  }

  void _filterSuggestions(String query) {
    setState(() {
      filteredSuggestions = suggestions
          .where((suggestion) =>
              suggestion['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Discover Friends'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Sololearn()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(
                  suggestions: suggestions,
                  onSearch: _filterSuggestions,
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: Text(
              'FIND FRIENDS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                _buildFindFriendsItem(Icons.person_add, 'Invite Friends'),
                _buildFindFriendsItem(Icons.contacts, 'Find Contacts'),
                _buildFindFriendsItem(Icons.facebook, 'Facebook Friends'),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10),
            child: Text(
              'SUGGESTIONS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredSuggestions.length,
              itemBuilder: (context, index) {
                return _buildSuggestionItem(filteredSuggestions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFindFriendsItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionItem(Map<String, dynamic> suggestion) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(suggestion['image']),
            radius: 20,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      suggestion['name'],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    if (suggestion['badge'].isNotEmpty)
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          color: suggestion['badge'] == 'PRO'
                              ? Colors.cyan
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Text(
                          suggestion['badge'],
                          style: TextStyle(
                            fontSize: 10,
                            color: suggestion['badge'] == 'PRO'
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ),
                  ],
                ),
                Text(
                  '${suggestion['followers']} | ${suggestion['level']}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          FollowButton(),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> suggestions;
  final Function(String) onSearch;

  CustomSearchDelegate({required this.suggestions, required this.onSearch});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    onSearch(query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredSuggestions = suggestions
        .where((suggestion) =>
            suggestion['name'].toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(filteredSuggestions[index]['image']),
          ),
          title: Text(filteredSuggestions[index]['name']),
          subtitle: Text(
              '${filteredSuggestions[index]['followers']} | ${filteredSuggestions[index]['level']}'),
          trailing: FollowButton(),
        );
      },
    );
  }
}

class FollowButton extends StatefulWidget {
  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool _isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isFollowed = !_isFollowed;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _isFollowed ? Colors.green.withOpacity(0.3) : Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Text(
        _isFollowed ? 'UNFOLLOW' : 'FOLLOW',
        style: TextStyle(
          color: Colors.white.withOpacity(
              _isFollowed ? 0.5 : 1),// adjust opacity based on state
        ),
      ),
    );
  }
}
