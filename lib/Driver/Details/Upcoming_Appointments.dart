import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';
import 'package:memoire/Driver/homepage.dart';

import '../../widgets/circle_button.dart';
class NotificationsScreen extends StatefulWidget {
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DriverAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
              Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(DateFormat.yMMMEd().format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),),
                      ) ,
            _calander(),
        Container(
          height: 1000,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5 ),
            child: ListView(
              shrinkWrap: true,
              children: [
                InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BottomSheetContent();
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:5.0, top: 6.0),
                          child: Container(
                            
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 240, 238, 238),
                                width: 1.0,
                              ),
                              color: Color.fromARGB(255, 229, 235, 238),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                         Expanded(
                                        child: Image(
                                          image: AssetImage("assets/eaamb.png"),
                                          width: 80,
                                          height: 80,) ),
                                          Text('08:00', style:
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            letterSpacing: 1.1
                                          ))
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 1,
                                    color: Colors.black,
                                    endIndent: 5,
                                    indent: 5,
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 7),
                                        Text(
                                          'Nursing Appointment',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Text(
                                          'Cité 1200 bt 60, 25100, El Khroub',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.5,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Passengers: Nurse1, Nurse2',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
          
          InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BottomSheetContent();
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:5.0, top: 6.0),
                          child: Container(
                            
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 240, 238, 238),
                                width: 1.0,
                              ),
                              color: Color.fromARGB(255, 229, 235, 238),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                         Expanded(
                                        child: Image(
                                          image: AssetImage("assets/eaamb.png"),
                                          width: 80,
                                          height: 80,) ),
                                          Text('10:00', style:
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                            letterSpacing: 1.1
                                          ))
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 1,
                                    color: Colors.black,
                                    endIndent: 5,
                                    indent: 5,
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 7),
                                        Text(
                                          'Cardiologist Appointment',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Text(
                                          'Cité 1200 bt 60, 25100, El Khroub',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.5,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Passengers: Doctor1',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
            ],   
                   
                  ),
          ),
        ),
          ],
        ),
      ),
    );
  }


 Widget BottomSheetContent2() {
    return Container(
      
      child: Column(
        children: [
          // Add your bottom sheet content here
          
          Column(
            
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("Appoiment Details",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                              ),),
                  
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child:

                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                        Text(
                          'Specialist :Nursing',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                       
                     SizedBox(height: 7,),
                     Text(
                      'Patient Name : Mohamed Berkani',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                     SizedBox(height: 7,),
                     Text(
                          'Adress :',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                           SizedBox(height: 7,),
                     Text(
                      '25 rue Larbi Ben Mhidi, 31000, Oran',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                     SizedBox(height: 7,),
                    Text(
                         " specialInstructions: Bring wheelchair",
                          style: TextStyle(
                            fontSize: 18,
                            
                            fontWeight: FontWeight.w500,
                          ),),
                           SizedBox(height: 7,),
                          Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image(
                    image: AssetImage("assets/map03.png"),
                        width: 500,
                        height: 200,),
                               Padding(
                               padding: const EdgeInsets.only(right: 30),
                                child: GestureDetector(
                                    onTap: () {
          // Handle icon click event
                                         },
                                 child: Container(
                                 decoration: BoxDecoration(
                                    color: Colors.white,
                                   shape: BoxShape.circle,
                                        ),
                                padding: EdgeInsets.all(8),
                                     child: Icon(
                                 Icons.my_location_outlined,
                                       size: 30,
                            color: Colors.blue,
                                     ),
                                  ),
                                  ),
                                 ),
                                 ],
                                ),
                       
                           SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                             GestureDetector(
                onTap: () {
                  // Handle edit appointment button press
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.red
                    ),
                    color: Color.fromARGB(255, 247, 81, 69),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Report',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(width: 16,),
              GestureDetector(
                onTap: () {
                  // Handle edit appointment button press
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 54, 152, 244)
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  child: Text(
                    'Completed',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
                            ],
                          ),
                  ],
                ),
              ),
              
            ],
          ),
          
        
        ],
      ),
    );
  }


_calander(){
  return 
            Container(
              margin: EdgeInsets.only(top:10,left: 10, right: 10, bottom: 10),
              child:
                
               DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectedTextColor: Colors.white,
                selectionColor: Colors.blue,
                dateTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
                monthTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
                dayTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey
                ),
                onDateChange: (date) {
                  _selectedDate=date;
                },
              ),
            );
}
}

class DriverAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(110);
   DriverAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding:  EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 110,
      width: double.infinity,
      decoration:  BoxDecoration(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BackButton(color: Colors.white),
              SizedBox(width: 5),
              Text(
                'Upcoming appointments',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 24.0,
                ),
              ),
          
             
              
    
            ],
          ),
          const SizedBox(height: 0),
        ],
      ),
    );
  }
}
