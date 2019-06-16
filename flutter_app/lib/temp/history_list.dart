import 'package:flutter/material.dart';
import './user.dart';
import 'package:flutter_app/temp/create_post.dart';
import 'base.dart';

class History extends StatelessWidget {
  /// Main Widget Build
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
                  child: ListView(
                    children: Base.history.map((user) => User(user)).toList(),
                  ),
                ),

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
