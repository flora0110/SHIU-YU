import 'package:flutter/material.dart';
import 'package:myapp/pages/menu.dart';
class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('schedule'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFC700),
      ),
      body: Column(
        children: [

          Expanded(
            child: Image.asset('images/schedule.jpg',
              width: 600,
            ),
          ),

        ],
      ),
      drawer: menu(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {

          },
          backgroundColor: Color(0xFFFF9000),
        )
    );
  }
}


