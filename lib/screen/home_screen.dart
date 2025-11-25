

import 'package:flutter/material.dart';

import 'setting.dart';

import 'category_screen.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({Key? key}) : super(key: key);

  @override

  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> categories = [

    {'name': 'ميكب اب', 'image': 'Images/pc11.jpg', 'key': 'makeup'},

    {'name': 'الكريمات والترطيب', 'image': 'Images/c1.jpg', 'key': 'creams'},

    {'name': 'غسول الوجه', 'image': 'Images/w2.jpg', 'key': 'cleansers'},

    {'name': 'الماسكات', 'image': 'Images/m3.jpg', 'key': 'masks'},

  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title:  Text('جمالك - الأقسام'),

        actions: [

          IconButton(

            icon:  Icon(Icons.settings),

            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>  SettingsScreen())),

          ),

        ],

      ),

      body: Padding(

        padding:  EdgeInsets.all(12),

        child: GridView.builder(

          itemCount: categories.length,

          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,

            mainAxisSpacing: 14,

            crossAxisSpacing: 14,

            childAspectRatio: 0.86,

          ),

          itemBuilder: (context, index) {

            final cat = categories[index];

            return Container(

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.circular(14),

                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.28), blurRadius: 8, offset:  Offset(0, 4))],

              ),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Expanded(

                    flex: 3,

                    child: ClipRRect(

                      borderRadius:  BorderRadius.vertical(top: Radius.circular(14)),

                      child: Image.asset(cat['image']!, width: double.infinity, fit: BoxFit.cover),

                    ),

                  ),

                  Expanded(

                    flex: 2,

                    child: Padding(

                      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 8),

                      child: Column(

                        children: [

                          Text(cat['name']!, style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),

                           Spacer(),

                          SizedBox(

                            width: double.infinity,

                            child: ElevatedButton(

                              onPressed: () {

                                Navigator.push(

                                  context,

                                  MaterialPageRoute(

                                    builder: (context) => CategoryScreen(

                                      categoryKey: cat['key']!,

                                      categoryTitle: cat['name']!,

                                    ),

                                  ),

                                );

                              },

                              child: const Text('المزيد'),

                            ),

                          ),

                        ],

                      ),

                    ),

                  ),

                ],

              ),

            );



            },

        ),

      ),

    );



    }

}



