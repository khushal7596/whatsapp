import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

 List names = ["khushal" , "aditya" , "harshil" , "eklavya" , "Umang" , "Nihar" , "Parv" , "Preet", "aditya" , "harshil" , "eklavya" , "Umang" , "Nihar" , "Parv"] ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // leading: Icon(Icons.menu , color: Colors.white,),
        actions: [
          //
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/camara');
            },
            icon: Icon(Icons.camera),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dots');
            },
            icon: Icon(Icons.menu_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.person, size: 70)),
            Center(
              child: Text(
                "Khushal Malviya",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            // Contact

            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: ListTile(
                leading: IconButton(onPressed: () {   Navigator.pop(context);Navigator.pushNamed(context, '/contacts');}, icon: Icon(Icons.contact_phone), iconSize: 30),
                title: TextButton.icon(
                      onPressed: (){   Navigator.pop(context);
                      Navigator.pushNamed(context, '/contacts');
                      }, 
                      label: Text('Contacts', 
                            style: TextStyle(
                                fontSize: 18 , 
                                fontWeight: FontWeight.bold ,
                                color: Colors.black)
                                ,)
                 ),                
              ),
            ),

           // Setting
            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: ListTile(
                leading: IconButton(onPressed: () {   Navigator.pop(context);Navigator.pushNamed(context, '/settings');}, icon: Icon(Icons.settings), iconSize: 30),
               title: TextButton.icon(
                      onPressed: (){   Navigator.pop(context);
                      Navigator.pushNamed(context, '/settings');
                      }, 
                      label: Text('Settings', 
                            style: TextStyle(
                                fontSize: 18 , 
                                fontWeight: FontWeight.bold ,
                                color: Colors.black)
                                ,)
                 ),
                
              ),
            ),

              // Help
            // 
            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: ListTile(
                leading: IconButton(onPressed: () {   Navigator.pop(context);Navigator.pushNamed(context, '/help');}, icon: Icon(Icons.help), iconSize: 30),
                
               title: TextButton.icon(onPressed: (){   Navigator.pop(context);Navigator.pushNamed(context, '/help');},label: Text('Help', style: TextStyle( fontSize: 18 , fontWeight: FontWeight.bold , color: Colors.black, ),)
                 ),
                
              ),
            ),


            // Profile
            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: ListTile(
               
                leading: IconButton(onPressed: () {   Navigator.pop(context);Navigator.pushNamed(context, '/profile');}, icon: Icon(Icons.person), iconSize: 30),
             
                title: TextButton.icon(
                      onPressed: (){   Navigator.pop(context);
                      Navigator.pushNamed(context, '/profile');
                      }, 
                      label: Text('Profile', 
                            style: TextStyle(
                                fontSize: 18 , 
                                fontWeight: FontWeight.bold ,
                                color: Colors.black)
                                ,)
                 ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 235, 235),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.white),
                 
                  ),

                  child: Icon(Icons.logout),
              ),
            )
          ],
        ),
      ),

      body:
      
      Column(

        children: [
         
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
            
            height: 50,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2, color: Colors.blueGrey)
            ),
            
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.search),
                SizedBox(width: 10,),
                Text("Search" , style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),)
              ],
            ),
            
                    ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder:(context, index) {
               return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 5),
                  child: 
                  // box of every listIntem
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      color:  Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    ),

                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(names[index][0]),
                      ),

                      title: Text(names[index]),
                      subtitle: Text("Hello"),
                    ),
                    
                  ),
                );
              }
             
              
            ),



            
          ),


       
        ],
      )


      

    );
  }
}
