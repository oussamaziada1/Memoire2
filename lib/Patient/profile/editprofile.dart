import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../../models/user.dart';
import '../../utilities/user_pref.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/textfield_widget.dart';

class EditProfilePage2 extends StatefulWidget {
  @override
  _EditProfilePage2State createState() => _EditProfilePage2State();
}

class _EditProfilePage2State extends State<EditProfilePage2> {
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
            text: 'Farsi Ahmed',
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: 'farsiahmed@gmail.com',
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
        
          TextFieldWidget(
            label: 'Address',
            text: 'Somewhere, Khenchela',
            onChanged: (address) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Phone number',
            text: '+213556639907',
            onChanged: (phoneNumber) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Birthdate',
            text: '31/05/2002',
                 
                  onChanged: (birthdate) {},
                ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

