import 'package:flutter/material.dart';
import 'package:myapp/pages/menu.dart';
class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFC700),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.perm_identity_outlined,
              size: 40,
            ),
            title: const Text('Account',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.lock_outlined,
              size: 40,
            ),
            title: const Text('Privacy',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined,
              size: 40,
            ),
            title: const Text('Notifications',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_outlined,
              size: 40,
            ),
            title: const Text('Follow and invite friends',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.language_outlined,
              size: 40,
            ),
            title: const Text('Language',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.help_center_outlined,
              size: 40,
            ),
            title: const Text('Help center',
              style: TextStyle(
                fontSize: 25,
              ),
            ),

          ),
        ],
      ),
      drawer: menu(),
    );
  }
}
