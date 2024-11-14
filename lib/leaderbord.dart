import 'package:cologe/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'EarnXpPage.dart';




class LeaderboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize:Size(20, 20),
            child: TabBar(tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.starHalfStroke),
                child: Text("TOP"),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.moneyCheck),
                child: Text("REWARD"),
              ),
            ]),
          ),

        ),
        //  bottom: ,

        body: TabBarView(
          children: [
            Column(
            children: [
              // Container(
              //   color: Colors.grey[800],
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {
              //           // Navigator.push(
              //           //   context,
              //           //   MaterialPageRoute(builder: (context) => this),
              //           // );
              //         },
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.blue,
              //           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5),
              //           ),
              //         ),
              //         child: Text(
              //           'SCORES',
              //           style: TextStyle(fontSize: 16),
              //         ),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {
              //           // Navigator.push(
              //           //   context,
              //           //   MaterialPageRoute(builder: (context) => EarnXpPage()),
              //           // );
              //         },
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.grey,
              //           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5),
              //           ),
              //         ),
              //         child: Text(
              //           'EARN XP',
              //           style: TextStyle(fontSize: 16),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                color: Colors.grey[800],
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LeagueIcon(color: Colors.orange),
                    LeagueIcon(color: Colors.purple),
                    LeagueIcon(color: Colors.green),
                    LeagueIcon(color: Colors.red),
                    LeagueIcon(color: Colors.blue),
                    LeagueIcon(
                      color: Colors.black26,
                      child: Image.asset(
                        'fff/a.jpg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Saturn League',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Expanded(
                child: Center(

                  child: Container(color: Colors.white54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.emoji_events,
                          color: Colors.orange,
                          size: 100,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Complete a lesson or earn XP to join this week's Leaderboard!",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'START LEARNING',
                            style: TextStyle(fontSize: 16,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
            EarnXpPage()
        ]),

      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  final bool isActive;

  TabItem({required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isActive ? Colors.white : Colors.grey,
        fontSize: 16,
      ),
    );
  }
}

class LeagueIcon extends StatelessWidget {
  final Color color;
  final Widget? child;

  LeagueIcon({required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child ?? Container(),
    );
  }
}
