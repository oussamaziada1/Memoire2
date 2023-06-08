import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memoire/Doctor/login_page.dart';
import '../utilities/user_pref.dart';
import '../widgets/profile_widget.dart';
import '../widgets/search_text_field.dart';
import 'homepage.dart';
import 'patient_profile.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsUI extends StatefulWidget {
  const SettingsUI({Key? key});

  @override
  State<SettingsUI> createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {
  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(child: SettingsUIBody()),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 110,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF73AEF5),
            Color(0xFF61A4F1),
            Color(0xFF478FE0),
            Color(0xFF398AE5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
              Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 24.0,
                ),
              ),
              // CircleButton(
              //   icon: Icons.notifications,
              //   onPressed: () {},
              // ),

              
              
            ],
          ),
          SizedBox(height: 20,),
  
        ],
      ),
    );
  }
}

class SettingsUIBody extends StatefulWidget {
  const SettingsUIBody({Key? key});

  @override
  State<SettingsUIBody> createState() => _SettingsUIBodyState();
}

class _SettingsUIBodyState extends State<SettingsUIBody> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return Scaffold(
      
      body: Container(
        color: Colors.white,
        child: SettingsList(
           
          sections: [
        SettingsSection(
      
          title: Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.language),
              title: Text('Language'),
              value: Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {},
              initialValue: true,
              leading: Icon(Icons.format_paint),
              title: Text('Enable custom theme'),
            ),
          ],
        ),
          SettingsSection(
          title: Text('Security'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: Icon(Icons.person),
              title: Text('Log out'),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                }
                ,child: Icon(Icons.logout)),
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}