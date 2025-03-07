import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:memoire/Patient/bottom_homepage.dart';

import '../../models/user.dart';
import '../../utilities/user_pref.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/profile_widget.dart';
import '../Specialist.dart';
import 'editprofile.dart';
import 'medicalfolder.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(child: ProfileScreenBody()),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: () {
                  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Patient()),
                              ); // Go back to the previous page
                },
              ),
              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 24.0,
                ),
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({Key? key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        const SizedBox(height: 10),
        ProfileWidget(
          imagePath: user.imagePath,
          onClicked: () async {},
          isEdit: false,
        ),
        const SizedBox(height: 24),
        buildName(user),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildEditButton(context),
            SizedBox(width: 40,),
             buildAnotherButton(context),
          ],
        ),
        
        const SizedBox(height: 10),
        Divider(height: 10, color: Colors.black54, endIndent: 20, indent: 20,),
        const SizedBox(height: 10),
        buildGender(user),
        const SizedBox(height: 10),
        Divider(height: 10, color: Colors.black54, endIndent: 20, indent: 20,),
        const SizedBox(height: 10),
        buildAddress(user),
        const SizedBox(height: 10),
        Divider(height: 10, color: Colors.black54, endIndent: 20, indent: 20,),
        const SizedBox(height: 10),
        buildPhoneNumber(user),
        Divider(height: 10, color: Colors.black54, endIndent: 20, indent: 20,),
        const SizedBox(height: 10),
        buildBirthDate(user),
       
        const SizedBox(height: 10),
      
      ],
    );
  }

 Widget buildEditButton(BuildContext context) => Tooltip(
  message: 'Edit profile',
   child: IconButton(
    icon: Icon(Icons.edit, color: Color(0xFF398AE5),),
    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage2())),
 ),
 );

  Widget buildAnotherButton(BuildContext context) =>  Tooltip(
    
    message: 'Medical Folder',
    child: IconButton(
      onPressed: () {
         Navigator.push(context,MaterialPageRoute(builder: (context) => Medical_Folder()));
      },
      icon: Icon(Icons.folder_copy, color: Color.fromARGB(255, 255, 220, 93), size: 30,),
    ),
  );

  Widget buildName(User user) => Column(
        children: [
          Text('Farsi Ahmed',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 4),
          Text('farsiahmed@gmail.com',
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              user.title,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildSpecialty(User user) => Container();

  Widget buildGender(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gender',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              user.gender,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildAddress(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Somewhere, Khenchela',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildPhoneNumber(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone Number',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('+213556639907',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildBirthDate(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Birthdate',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('31/05/2002',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildYearsExp(User user) => Container();

  Widget buildInstitution(User user) => Container();
}


