


import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {

   WelcomeScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Row(

          children: [

            CircleAvatar(

              radius: 18,

              backgroundImage: AssetImage('Images/pc7.jpg'),

            ),

             SizedBox(width: 10),

             Text('جمالك - متجر العناية'),

          ],

        ),

      ),

      body: Container(

        decoration: BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topRight,

            end: Alignment.bottomLeft,

            colors: [

              Colors.pink.shade50,

              Colors.pink.shade100,

              Colors.pink.shade200,

              Colors.pink.shade300,

            ],

          ),

        ),

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              CircleAvatar(

                radius: 60,

                backgroundImage: AssetImage('Images/pc7.jpg'),

              ),

              const SizedBox(height: 30),

              Text(

                'أهلاً بكم في جمالك',

                style: TextStyle(

                  fontSize: 32,

                  fontWeight: FontWeight.bold,

                  color: Colors.pink.shade800,

                ),

              ),

               SizedBox(height: 10),

              Text(

                'اكتشفي عالم الجمال والأناقة',

                style: TextStyle(

                  fontSize: 18,

                  color: Colors.pink.shade600,

                ),

              ),

             SizedBox(height: 40),

              ElevatedButton(

                onPressed: () {

                  Navigator.push(

                    context,

                    MaterialPageRoute(builder: (context) =>  HomeScreen()),

                  );

                },

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.pink,

                  padding:  EdgeInsets.symmetric(horizontal: 40, vertical: 15),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25),

                  ),

                ),

                child:  Text(

                  'استكشف منتجاتنا',

                  style: TextStyle(fontSize: 18, color: Colors.white),

                ),

              ),

            ],

          ),

        ),

      ),

      bottomNavigationBar: Container(

        height: 50,

        color: Colors.pink.shade100,

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

            Row(

              children:  [

                Icon(Icons.phone, color: Colors.pink, size: 18),

                SizedBox(width: 5),

                Text('0551234567'),

              ],

            ),

            Row(

              children:  [

                Icon(Icons.camera_alt, color: Colors.pink, size: 18),

                SizedBox(width: 5),

                Text('@jamalak_shop'),

              ],

            ),

          ],

        ),

      ),

    );

  }

}


