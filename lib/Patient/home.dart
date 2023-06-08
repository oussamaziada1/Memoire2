import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



import 'Specialist.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  DateTime _selectedDate = DateTime.now();
    void _showBottomSheet() {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                // Handle cancel appointment button press
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xFF398AE5),
                  ),
                  color:  Color(0xFF478FE0),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                height: 55,
                child: Text(
                  'Edit Appointment',
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Handle edit appointment button press
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                width: MediaQuery.of(context).size.width*0.9,
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
                  'Cancel Appointment',
                  style: TextStyle(fontSize: 18 ,color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Handle close button press
                Navigator.pop(context);
              },
              child: Container(
                 margin: EdgeInsets.symmetric(vertical: 4),
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey
                  ),
                  color: Color.fromARGB(255, 199, 199, 199),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                height: 50,
                child: Text(
                  'Close',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar2(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color:   Color(0xFF398AE5),
                  borderRadius: BorderRadius.circular(12)
                 ),
                
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Image(image: AssetImage("assets/men.png"),width: 200,
                        height: 200,)
                        
                        
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              'Get the Care You Deserve!',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Plan Your Visit in a Few Clicks right now  ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            child: Text(
                              'Find a specialist',
                              style: TextStyle(fontSize: 18),
                              
                              
                            ),
                            onPressed: () {
                              // Add your logic here for handling the button press
                              // For example, you can navigate to your page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Appointment()),
                              );
                            },
                            
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              
                              ),
                              backgroundColor: Color(0xFF61A4F1),
                              fixedSize: Size.fromHeight(30),
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(DateFormat.yMMMEd().format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,top: 10),
              child:
               DatePicker(
                 DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectedTextColor: Colors.white,
                selectionColor:  Color(0xFF398AE5),
                dateTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
                monthTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
                dayTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
                onDateChange: (date) {
                  _selectedDate=date;
                },
               )),
             ListView(
            shrinkWrap: true,
           children: [
              Padding( 
                  padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  
                  child: GestureDetector(
                    onTap: _showBottomSheet,
                    child: Container(
                     
                              height: 125,        
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 235, 238),
                              borderRadius: BorderRadius.circular(12),         
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('10:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.1),),
                            ),
                         
                          ],
                          ),
                      ),
                        
                      VerticalDivider(width:1, color: Colors.black,endIndent: 5, indent: 5, ),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7,),
                          Text('Dentist appointment:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 7,),
                          Text('Doctor: Hakim Bouchiba', style: TextStyle(color: Colors.black,  fontSize: 15),),
                          SizedBox(height: 7,),
                          Text('Waiting', style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold, fontSize: 17),),
                          SizedBox(height: 7,),
                          Row(
                          children: [
                          Text(
                          'Notes: none',
                          style: TextStyle(
                            
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0)
                               ),
                               ),
                             
                                   ],
                            ),
                                  
                                  
                        ],
                      )
                      
                           ],
                           ),
                               ),
                    ),
                  ),
                ),
            




             Padding( 
                  padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  
                  child: GestureDetector(
                    onTap: _showBottomSheet,
                    child: Container(
                     
                              height: 125,        
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 235, 238),
                              borderRadius: BorderRadius.circular(12),         
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('12:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.1),),
                            ),
                         
                          ],
                          ),
                      ),
                        
                      VerticalDivider(width:1, color: Colors.black,endIndent: 5, indent: 5, ),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7,),
                          Text('Nurse appointment:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 7,),
                          Text('Nurse: Ayah Boudjedra', style: TextStyle(color: Colors.black,  fontSize: 15),),
                          SizedBox(height: 7,),
                          Text('Waiting', style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold, fontSize: 17),),
                          SizedBox(height: 7,),
                          Row(
                          children: [
                          Text(
                          'Notes: none',
                          style: TextStyle(
                            
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0)
                               ),
                               ),
                             
                                   ],
                            ),
                                  
                                  
                        ],
                      )
                      
                           ],
                           ),
                               ),
                    ),
                  ),
                ),
            


             Padding( 
                  padding:EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  
                  child: GestureDetector(
                    onTap: _showBottomSheet,
                    child: Container(
                     
                              height: 125,        
                              decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 235, 238),
                              borderRadius: BorderRadius.circular(12),         
                              ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('14:00', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 1.1),),
                            ),
                         
                          ],
                          ),
                      ),
                        
                      VerticalDivider(width:1, color: Colors.black,endIndent: 5, indent: 5, ),
                      SizedBox(width: 10,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 7,),
                          Text('Cardiologist appointment:', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 7,),
                          Text('Doctor: Fatima Zerhouni', style: TextStyle(color: Colors.black,  fontSize: 15),),
                          SizedBox(height: 7,),
                          Text('Waiting', style: TextStyle(color: Colors.amber[700], fontWeight: FontWeight.bold, fontSize: 17),),
                          SizedBox(height: 7,),
                          Row(
                          children: [
                          Text(
                          'Notes: none',
                          style: TextStyle(
                            
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 0, 0)
                               ),
                               ),
                             
                                   ],
                            ),
                                  
                                  
                        ],
                      )
                      
                           ],
                           ),
                               ),
                    ),
                  ),
                ),
            


              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 110,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(colors: [        
           Color(0xFF73AEF5),
           Color(0xFF61A4F1),
           Color(0xFF478FE0),
           Color(0xFF398AE5),],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           )      
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text('Welcome!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 24.0,              
              ), 
              ),
              CircleButton(
                icon: Icons.notifications,
                onPressed: () {  },
              ),             
            ],
          ),
          const SizedBox(height: 20,),
          // const SearchTextField(),

        ],
      ),
    );
  }
}
