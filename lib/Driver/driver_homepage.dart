import 'package:flutter/material.dart';
import 'package:memoire/Doctor/setting_ui.dart';
import 'package:memoire/Driver/Details/profile.dart';
import 'package:memoire/Driver/homepage.dart';


class DriverHomepage extends StatefulWidget {
  const DriverHomepage({super.key});

  @override
  State<DriverHomepage> createState() => _DriverHomepageState();
}

class _DriverHomepageState extends State<DriverHomepage> {
  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    DriverDashboardScreen(),
    ProfileScreen01(),

    SettingsUI(),
  ];
  
  @override
   


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex)
           ), 
        bottomNavigationBar: BottomNavigationBar(
          
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0xFF398AE5),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.house, size: 27.0,  ),
              icon: Icon(Icons.house_outlined, size: 27.0,),
              label: 'home',
              ),
          
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person, size: 27.0,),
              icon: Icon(Icons.person_outline, size: 27.0,),
              label: 'Profile' ,
              
              ),BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings, size: 27.0,),
              icon: Icon(Icons.settings_outlined, size: 27.0,),
              label: 'Settings' ,
              
              ),      
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),   
      ),

      );
  }
}