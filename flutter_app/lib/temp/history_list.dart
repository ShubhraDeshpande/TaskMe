import 'package:flutter/material.dart';
import './user.dart';
import 'package:flutter_app/temp/create_post.dart';
import 'base.dart';

class History extends StatelessWidget {
  /// Main Widget Build
  static bool base;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('My Jobs'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(220, 220, 220, 1),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: IconButton(icon: Icon(Icons.arrow_back, size: 40),onPressed: (){Navigator.pop(context);},),
            ),
          ],
        ),
        body: Material(type: MaterialType.transparency,
          child: Stack(
              children: [


                Container(color: Color.fromARGB(255, 211, 211, 211),
                  child: Base.history.length >0 ?
                     ListView(
                      children: Base.history.map((user) => User(user, base)).toList(),
                    ):
                   Padding(padding: const EdgeInsets.all(100),child: Container(color: Colors.white70,child:  Text("You don't seem to have any jobs. Let's get some money")),
                )),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 600.0, left: 300, bottom: 10),
                  child: SizedBox(height: 100, width: 100,
                    child: FloatingActionButton(
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.add),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CreatePost()));
                      },
                    ),
                  ),
                ),

              ]),
        ),
      ),
    );
  }
}
