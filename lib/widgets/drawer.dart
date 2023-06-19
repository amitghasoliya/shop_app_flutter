import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://th.bing.com/th/id/OIP.2bJ9_f9aKoGCME7ZIff-ZwHaJ4?pid=ImgDet&rs=1";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Amit Kumar"),
              accountEmail: Text("amitghasoliya07@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),

            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home, color: Colors.deepPurple,
            ),
            title: Text(              
              "Home", 
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled, color: Colors.deepPurple,
            ),
            title: Text(              
              "Profile", 
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.mail, color: Colors.deepPurple,
            ),
            title: Text(              
              "Email", 
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.deepPurple,
              ),
            ),
          )
        ],
      ),
    );
  }
}
