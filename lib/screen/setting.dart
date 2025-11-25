

import 'package:flutter/material.dart';
class SettingsScreen extends StatefulWidget {

   SettingsScreen({Key? key}) : super(key: key);

  @override

  State<SettingsScreen> createState() => _SettingsScreenState();

}

class _SettingsScreenState extends State<SettingsScreen> {

  bool _darkMode = false;

  bool _notifications = true;

  String _language = 'العربية';

  String _currency = 'ريال سعودي';

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title:  Text('الإعدادات')),

      body: ListView(

          padding: EdgeInsets.all(16),

          children: [

      Card(

      child: ListTile(

      leading:  Icon(Icons.person, color: Colors.pink),

      title:  Text('الملف الشخصي'),

      trailing:  Icon(Icons.arrow_forward_ios, size: 16),

      onTap: () {},

    ),

    ),

     SizedBox(height: 10),

    Card(

    child: Column(

    children: [

    ListTile(

    leading:  Icon(Icons.language, color: Colors.pink),

    title:  Text('اللغة'),

    subtitle: Text(_language),

    trailing:  Icon(Icons.arrow_forward_ios, size: 16),

    onTap: () {},

    ),

    ListTile(

    leading:  Icon(Icons.attach_money, color: Colors.pink),

    title:  Text('العملة'),

    subtitle: Text(_currency),

    trailing:  Icon(Icons.arrow_forward_ios, size: 16),

    onTap: () {},

    ),

    ],

    ),

    ),



     SizedBox(height: 10),

    Card(

    child: Column(

    children: [

    SwitchListTile(

    title: const Text('الوضع الليلي'),

    value: _darkMode,

    onChanged: (value) => setState(() => _darkMode = value),

    secondary: const Icon(Icons.dark_mode, color: Colors.pink),

    ),

    SwitchListTile(

    title: const Text('الإشعارات'),
    value: _notifications,

    onChanged: (value) => setState(() => _notifications = value),

    secondary: const Icon(Icons.notifications, color: Colors.pink),

    ),

    ],

    ),



    ),

     SizedBox(height: 10),

    Card(

    child: ListTile(

    leading: const Icon(Icons.help, color: Colors.pink),

    title: const Text('المساعدة والدعم'),

    trailing: const Icon(Icons.arrow_forward_ios, size: 16),

    onTap: () {},

    ),

    ),

    Card(

    child: ListTile(

    leading: const Icon(Icons.info, color: Colors.pink),

    title: const Text('عن التطبيق'),

    trailing: const Icon(Icons.arrow_forward_ios, size: 16),

    onTap: () {},

    ),

    ),

    ],

    ),
      bottomNavigationBar: Container(

    height: 50,

    color: Colors.pink.shade100,

    child: Row(

    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: const [

    Text('0551234567'),

    Text('@jamalak_shop'),

    ],

    ),

    ),

    );

  }

}


