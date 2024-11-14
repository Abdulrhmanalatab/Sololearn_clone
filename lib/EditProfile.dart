import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("fff/profile_pic.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'CHANGE AVATAR',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    FaIcon(FontAwesomeIcons.businessTime, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Abdulrhman Hamoud Naji Ali',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'osama7798333@gmail.com',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                dropdownColor: Color(0xFF424242),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Saudi Arabia'),
                    value: 'Saudi Arabia',
                  ),
                  DropdownMenuItem(
                    child: Text('Soria'),
                    value: 'Soria',
                  ),
                  DropdownMenuItem(
                    child: Text('Plastain'),
                    value: 'Plastain',
                  ),
                  DropdownMenuItem(
                    child: Text('Vanuatu'),
                    value: 'Vanuatu',
                  ),
                  DropdownMenuItem(
                    child: Text('Vatican City'),
                    value: 'Vatican City',
                  ),
                  DropdownMenuItem(
                    child: Text('Venezuela'),
                    value: 'Venezuela',
                  ),
                  DropdownMenuItem(
                    child: Text('Viet Nam'),
                    value: 'Viet Nam',
                  ),
                  DropdownMenuItem(
                    child: Text('Virgin Islands (British)'),
                    value: 'Virgin Islands (British)',
                  ),
                  DropdownMenuItem(
                    child: Text('Virgin Islands (US)'),
                    value: 'Virgin Islands (US)',
                  ),
                  DropdownMenuItem(
                    child: Text('Wallis & Futuna Islands'),
                    value: 'Wallis & Futuna Islands',
                  ),
                  DropdownMenuItem(
                    child: Text('Western Sahara'),
                    value: 'Western Sahara',
                  ),
                  DropdownMenuItem(
                    child: Text('Yemen'),
                    value: 'Yemen',
                  ),
                  DropdownMenuItem(
                    child: Text('Zambia'),
                    value: 'Zambia',
                  ),
                  DropdownMenuItem(
                    child: Text('Zimbabwe'),
                    value: 'Zimbabwe',
                  ),
                ],
                onChanged: (value) {},
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text('SAVE'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryItem extends StatelessWidget {
  final IconData icon;
  final String countryName;

  CountryItem({required this.icon, required this.countryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          FaIcon(icon, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Text(
            countryName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
