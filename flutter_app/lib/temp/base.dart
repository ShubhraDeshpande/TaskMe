import 'package:flutter/material.dart';
import './user_model.dart';
import './user.dart';
import 'package:flutter_app/temp/create_post.dart';

class Base extends StatelessWidget {
  final List<UserModel> _userlist = [
    UserModel(1, "Shovel My house",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0, "It is just the description", "21/12/2019", "shubhra","+1-9422203097"),
    UserModel(2, "ABC ABC",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(3, "NO work",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(4, "Brush my lion",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(5, "Bath my pet",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(6, "Takes a lot to do this",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(7, "I am not",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(8, "Typing it",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(9, "123456",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(10, "2345677",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(11, "1",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),

  ];

  /// Main Widget Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Material( type: MaterialType.transparency,
          child: Stack(
            children:[ Container( color: Color.fromARGB(255, 211, 211, 211),
              child: ListView(
                children: _userlist.map((user) => User(user)).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:600.0, left: 300, bottom: 10),
              child: SizedBox( height: 100,width: 100,
                child: FloatingActionButton(
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.add),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost()));},
                  ),
                ),
              ),


            ] ),
        ),
      ),
    );
  }
}