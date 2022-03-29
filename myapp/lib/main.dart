import 'package:flutter/material.dart';
import 'package:myapp/pages/task.dart';
import 'package:myapp/pages/myapp.dart';
import 'package:myapp/pages/menu.dart';
import 'package:myapp/pages/setting.dart';
import 'package:myapp/pages/ranking.dart';
import 'package:myapp/pages/schedule.dart';
import 'package:myapp/pages/friend.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/profile',
      routes: {
        '/profile':(context) => Profile(),
        '/task': (context) => Task(),
        '/schedule': (context) => Schedule(),
        '/friend': (context) => Friend(),
        '/setting': (context) => Setting(),
        '/ranking': (context) => Ranking(),


      },
      theme: ThemeData(
        platform: TargetPlatform.iOS,
      )

  ));
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Color(0xFFFFC700),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.grey[300],
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(
                          'images/view1.jpg'),
                    ),
                    SizedBox(width: 50),
                    Text("Name\nskjklj@email.com.tw",style: TextStyle(fontSize: 20)),

                  ]
              ),
            ),
            const SizedBox(height: 10),

            //https://imgur.com/RU8bH5v
            const Image(
              image: NetworkImage("https://i.imgur.com/11ACPLw.jpg"),
              fit: BoxFit.fill,
            ),


          ],
        ),
        drawer: menu(),
        );
  }
}



