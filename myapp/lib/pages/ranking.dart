
import 'package:flutter/material.dart';
import 'package:myapp/pages/menu.dart';
class Ranking extends StatelessWidget {
  const Ranking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('Ranking'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFC700),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBox(height: 20,),
          //Text("Ranking",style: TextStyle(fontSize: 20)),
          Container(
            width: double.infinity,
            child: GestureDetector(
              onTap: (){
                _MySimpleDialog(context);
              },
              child: Image.asset(
                'images/rank1.jpg',
                fit: BoxFit.fill,
                //width: 700.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image.asset(
              'images/rank_other.jpg',
              fit: BoxFit.fill,
              //width: 700.0,
            ),

            ),
          ),

        ],
      ),

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
              'images/rank_detail.jpg',

            ),
          ],
        );
      });
}
