
import 'package:flutter/material.dart';
import 'package:myapp/pages/menu.dart';
class Friend extends StatelessWidget {
  const Friend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('Friends'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFC700),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text("Ranking",style: TextStyle(fontSize: 20)),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/ranking');
            },
            child: Container(

              margin: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [

                        Icon(Icons.emoji_events_outlined,
                          size: 80,
                        ),
                        Text("Luna"),
                        Text("262mins"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.emoji_events_outlined,
                          size: 80,
                        ),
                        Text("Zhu Ge"),
                        Text("297mins"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.emoji_events_outlined,
                          size: 80,
                        ),
                        Text("John"),
                        Text("271mins"),
                      ],
                    ),
                  ),

                ],
              ),

            ),
          ),
          Expanded(child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        'images/view1.jpg'),
                    ),

                    Image.asset(
                      'images/bar1.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'images/view2.jpg'),
                    ),

                    Image.asset(
                      'images/bar2.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  _MySimpleDialog(context);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(
                            'images/view3.jpg'),
                      ),

                      Image.asset(
                        'images/bar3.jpg',
                        width: 300.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'images/view4.jpg'),
                    ),

                    Image.asset(
                      'images/bar4.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'images/view5.jpg'),
                    ),

                    Image.asset(
                      'images/bar5.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'images/view6.jpg'),
                    ),

                    Image.asset(
                      'images/bar2.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                          'images/view3.jpg'),
                    ),

                    Image.asset(
                      'images/bar2.jpg',
                      width: 300.0,
                    ),
                  ],
                ),
              ),

            ],
          ),
          ),

        ],
      ),
      drawer: menu(),
    );
  }
}

void _MySimpleDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            Image.asset(
              'images/friend_detail.jpg',
              fit: BoxFit.fill,
            ),
          ],
        );
      });
}