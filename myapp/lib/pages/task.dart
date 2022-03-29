import 'package:flutter/material.dart';
import 'package:myapp/pages/menu.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);
  //final String task1="swim";
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  List<String> tasks = ["swim","learning English"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFFFC700),
        title: Text("Tasks"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text("remainding",style: TextStyle(fontSize: 20,color: Colors.grey)),
          SizedBox(height: 30,),
          Text("10:30",style: TextStyle(fontSize: 50)),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left:10,right:10),
            child: TextField(
              //obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'enter something',
                fillColor: Colors.grey[300],
                filled: true,
                isDense: true,                      // Added this
                contentPadding: EdgeInsets.all(8),
                prefixIcon: Icon(Icons.search_outlined)

              ),
            ),
          ),
          SizedBox(height: 30,),
          Column(

              children: tasks.map((task)
              => Container(
                color: Colors.grey[300],
                height: 80,
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(task,style: TextStyle(fontSize: 20.0,)),

                    //SizedBox(width: 20),
                    FloatingActionButton(
                        child: Icon(Icons.delete),
                        backgroundColor: Colors.grey,
                        onPressed: (){
                          setState(() {
                            tasks.remove(task);
                          });
                        })
                  ],
                ),
              )
              ).toList(),
            ),
        ],
      ),
        drawer: menu(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _MySimpleDialog(context);

          },
          backgroundColor: Color(0xFFFF9000),
        )
    );
  }
  void _MySimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(
              'Choose one type',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            children: <Widget>[
              SimpleDialogOption(
                child: Container(
                    color: Color(0xFFC1D3FF),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Customize")
                ),
                onPressed: () {
                  setState(() {
                    tasks.add("Customize");
                  });
                  Navigator.of(context).pop();
                }
                /*async{


                  var future = await Future(() {
                    setState(() {
                      tasks.add("Customize");
                    });
                  });

                  Navigator.of(context).pop();

                },*/
              ),
              SimpleDialogOption(
                child: Container(
                    color: Color(0xFFA1DBAD),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Studying")
                ),
                onPressed: () {
                  setState(() {
                    tasks.add("Studying");
                  });
                  Navigator.of(context).pop();
                }

              ),
              SimpleDialogOption(
                child: Container(
                    color: Color(0xFFFFE072),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sport")
                ),
                onPressed: () {
                  setState(() {
                  tasks.add("Sport");
                  });

                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}




