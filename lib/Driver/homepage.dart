import 'package:flutter/material.dart';
import 'package:memoire/Patient/home.dart';

import '../widgets/circle_button.dart';
import 'details/Upcoming_Appointments.dart';
import 'details/appoinment_mange.dart';
import 'details/profile.dart';

class DriverDashboardScreen extends StatefulWidget {
  @override
  State<DriverDashboardScreen> createState() => _DriverDashboardScreenState();
}

class _DriverDashboardScreenState extends State<DriverDashboardScreen>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFF398AE5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      
                      child: Row(
                        children: [
                           Expanded(
                      child: Image(image: AssetImage("assets/drive_safe.png"),width: 200,
                        height: 210,)
                        
                        
                    ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The road awaits, drive responsibly',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Safe driving is our priority, lets protect lives on the road',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  ElevatedButton(
                                    child: Text(
                                      'Appointments',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NotificationsScreen()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      backgroundColor:    Color(0xFF61A4F1),
                                      fixedSize: Size.fromHeight(30),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            
              Text(
                'My appointments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 1000,
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
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportPage()),
                );
              },
              child: Icon(Icons.library_books_rounded),
              backgroundColor:Color(0xFF398AE5),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(110);
   CustomAppBar({Key? key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome!',
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
          const SizedBox(height: 0),
        ],
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "Appointment Details",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Specialist: Nursing',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Passengers: Nurse1, Nurse2',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Address:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 7,),
                Text(
                  'Cité 1200 bt 60, 25100, El Khroub',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 7,),
                
                SizedBox(height: 7,),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                  Image(
                    image: AssetImage("assets/map03.png"),
                        width: 350,
                        height: 150,),
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
                          style: TextStyle(fontSize: 18, 
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
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
                            color: Color(0xFF478FE0),
                          ),
                          color: Color(0xFF398AE5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          'Completed',
                          style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                          ),
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
    );
  }
}
