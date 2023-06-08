import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import '../../models/user.dart';
import '../../utilities/user_pref.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/textfield_widget.dart';

class EditProfilePage3 extends StatefulWidget {
  @override
  _EditProfilePage3State createState() => _EditProfilePage3State();
}

class _EditProfilePage3State extends State<EditProfilePage3> {
  User user = UserPreferences.myUser;
  File? _image;

  Future<void> _selectImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      _image = pickedImage != null ? File(pickedImage.path) : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          GestureDetector(
            onTap: () => _selectImage(ImageSource.gallery),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/avatar.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: 'Joebeeb',
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: 'joebeeb@gmail.com',
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
         
          TextFieldWidget(
            label: 'Address',
            text: 'Nouvelle ville Ali mendjli constantine, Constantine',
            onChanged: (address) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Phone number',
            text: '+213656672495',
            onChanged: (phoneNumber) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Birthdate',
            text: '31/05/1990',
                 
                  onChanged: (birthdate) {},
                ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

