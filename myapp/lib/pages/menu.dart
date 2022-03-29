import 'package:flutter/material.dart';
import 'package:myapp/pages/task.dart';
import 'package:myapp/pages/myapp.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/profile');
            },
              child: Container(
                height: 250,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFC700),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage(
                              'images/view1.jpg'),

                        ),
                        SizedBox(height: 20),
                        Text("Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("skjklj@email.com.tw",),

                      ]
                  ),

                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.calendar_view_day_outlined,
                  size: 30,
                ),
                title: const Text('schedule',
                  style: TextStyle(fontSize: 20),
                ),

                onTap: (){
                  Navigator.of(context).pushNamed('/schedule');
                }
            ),
            ListTile(
                leading: Icon(Icons.task_outlined,
                  size: 30,
                ),
                title: const Text('task',
                  style: TextStyle(fontSize: 20),
                ),

                onTap: (){
                  Navigator.of(context).pushNamed('/task');
                }
            ),

            ListTile(
                leading: Icon(Icons.people_outlined,
                  size: 30,
                ),
                title: const Text('friend',
                  style: TextStyle(fontSize: 20),
                ),

                onTap: (){
                  Navigator.of(context).pushNamed('/friend');
                }
            ),
            ListTile(
                leading: Icon(Icons.settings_outlined,
                  size: 30,
                ),
                title: const Text('setting',
                  style: TextStyle(fontSize: 20),
                ),

                onTap: (){
                  Navigator.of(context).pushNamed('/setting');
                }
            ),


          ],
        )
    );
  }
}
