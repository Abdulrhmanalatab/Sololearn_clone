import 'package:cologe/main.dart';
import 'package:cologe/start/HomeSign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'EditProfile.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SectionTitle(title: 'Account'),
          SettingsItem(
            title: 'Edit Profile',
            trailing: Icon(
              Icons.edit,
              color: Colors.cyan,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          SettingsItem(
              title: 'Change Password',
              trailing: Icon(Icons.password_outlined, color: Colors.cyan)),
          SettingsItem(
              title: 'Connected Accounts',
              trailing: Icon(Icons.account_box_rounded, color: Colors.cyan)),
          SettingsItem(
              title: 'Blocked Accounts',
              trailing: Icon(Icons.block, color: Colors.cyan)),
          SettingsItem(
              title: 'Manage Challenge Weapons',
              trailing: Icon(FontAwesomeIcons.toolbox, color: Colors.cyan)),
          SettingsItem(
              title: 'Sololearn PRO',
              trailing: Icon(Icons.phone_android, color: Colors.cyan)),
          SettingsItem(
              title: 'Delete Account',
              trailing: Icon(Icons.delete, color: Colors.cyan)),
          SectionTitle(
            title: 'Settings',
          ),
          SettingsItem(
              title: 'Leaderboard',
              trailing: Icon(Icons.leaderboard_rounded, color: Colors.cyan)),
          SettingsItem(
              title: 'Activity Feed',
              trailing: Icon(Icons.feed_sharp, color: Colors.cyan)),
          SettingsItem(
              title: 'Push Notifications',
              trailing: Icon(Icons.notification_important, color: Colors.cyan)),
          SettingsItem(
            title: 'Night Mode',
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                // Handle switch state change
              },
            ),
          ),
          SettingsItem(
            title: 'Theme',
            trailing: Text('Blue', style: TextStyle(color: Colors.grey)),
          ),
          SettingsItem(
            title: 'Sound',
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                // Handle switch state change
              },
            ),
          ),
          SettingsItem(
            title: 'Location Services',
            trailing: Switch(
              value: false,
              onChanged: (bool value) {
                // Handle switch state change
              },
            ),
            subtitle:
                'Allow app to use your location and provide more personalized experience.',
          ),
          SettingsItem(
            title: 'Language',
            trailing: Text('English', style: TextStyle(color: Colors.grey)),
          ),
          SettingsItem(
              title: 'Terms of Use',
              trailing: Icon(Icons.groups, color: Colors.cyan)),
          SettingsItem(
              title: 'Privacy Policy',
              trailing: Icon(Icons.privacy_tip, color: Colors.cyan)),
          FilledButton(
            child: Icon(Icons.logout, color: Colors.yellowAccent),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homesign()),
              );
            },
          ),

          // TextButton(onPressed: (){
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => Homesign()),
          //   );
          // },
          //   child: SettingsItem(title: 'Sign Out',trailing:Icon(Icons.logout,color: Colors.cyan),),
          // ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  SettingsItem({required this.title, this.subtitle, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0),
            title: Text(title, style: TextStyle(color: Colors.blue)),
            subtitle: subtitle != null
                ? Text(subtitle!, style: TextStyle(color: Colors.grey))
                : null,
            trailing: trailing,
            onTap: onTap,
          ),
          Divider(
            color: Colors.blueAccent,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
