import 'package:cologe/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class SololearnPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4B0082),
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ),
        backgroundColor: Color(0xFF4B0082),
        body: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'fff/icon.jpg',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Get Premium access',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Unlock the full AI course catalogue!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                FeatureItem(
                  icon: FontAwesomeIcons.addressBook,
                  iconColor: Colors.orange,
                  title: 'Boost Efficiency',
                  description: 'Learn automating repetitive tasks',
                ),
                FeatureItem(
                  icon: FontAwesomeIcons.paintbrush,
                  iconColor: Colors.purple,
                  title: 'Unleash Creativity',
                  description: 'Learn generating better images and text',
                ),
                FeatureItem(
                  icon: FontAwesomeIcons.chartLine,
                  iconColor: Colors.blue,
                  title: 'Understand Data',
                  description: 'Make smarter data decisions with AI',
                ),
                FeatureItem(
                  icon: FontAwesomeIcons.star,
                  iconColor: Colors.cyan,
                  title: 'Stay Competitive',
                  description: 'Keep pace with AI\'s evolution',
                ),
                SizedBox(height: 20),
               EvaluationButton(),
                SizedBox(height: 5),
                Text(
                  'Over 700,000 5-star ratings on the app stores',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'START FOR FREE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  FeatureItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          FaIcon(
            icon,
            color: iconColor,
            size: 24,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class EvaluationButton extends StatefulWidget {
  @override
  _EvaluationButtonState createState() => _EvaluationButtonState();
}

class _EvaluationButtonState extends State<EvaluationButton> {
  List<bool> _isSelected = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              _isSelected[index] = !_isSelected[index];
            });
          },
          child: Icon(
            Icons.star,
            color: _isSelected[index] ? Colors.amber : Colors.grey,
            size: 24,
          ),
        );
      }),
    );
  }
}