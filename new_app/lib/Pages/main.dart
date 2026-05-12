import 'package:flutter/material.dart';
import 'package:new_app/Pages/homepage.dart';
import 'package:new_app/Pages/settings.dart';
import 'package:new_app/Pages/contacts.dart';
import 'package:new_app/Pages/help.dart';
import 'package:new_app/Pages/camara.dart';
import 'package:new_app/Pages/profile.dart';
import 'package:new_app/Pages/dots.dart';
import 'package:new_app/Pages/call.dart';
import 'package:new_app/Pages/updates.dart';
import 'package:new_app/Pages/Communities.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _i = 0 ;

   void increase(int index){
    setState(() {
      _i = index;
    });
   }

  final List _pages = [
    HomePage(),
    
    updates(),
    Communities(),
    call(),
    
    
   ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_i],
        
      bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey,
       currentIndex: _i,
       onTap: increase,
        
      
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat) , label: "Chats" , ),
          BottomNavigationBarItem(icon: Icon(Icons.update) , label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.people) , label: "Communities"),
          BottomNavigationBarItem(icon: Icon(Icons.call) , label: "Call"),
        ]
      
      
      )
      ),

      
      routes: {
        '/settings':(context) => Settings(),
        '/contacts':(context) => contacts(),
        '/dots':(context) => dots(),
        '/profile':(context) => profile(),
        '/camara':(context) => camara(),
        '/help':(context) => help(),

      },
    );
  
    
    
    
    
  }
}
