import 'package:flutter/material.dart';
import './user_model.dart';
import './user.dart';
import 'package:flutter_app/temp/create_post.dart';
import 'package:flutter_app/temp/history_list.dart';

class Base extends StatelessWidget {
static List<UserModel> history =[];
  static final List<UserModel> userlist = [
    UserModel(0, "Shovel My house",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0, "It is just the description", "21/12/2019", "shubhra","+1-9422203097"),
    UserModel(1, "ABC ABC",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(2, "NO work",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(3, "Brush my lion",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(4, "Bath my pet",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(5, "Takes a lot to do this",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(6, "I am not",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(7, "Typing it",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(8, "123456",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(9, "2345677",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),
    UserModel(10, "1",
        "https://dummyimage.com/150x150/f1c40f/fff","Garderning", "Address", 50.0,"It is just the description","21/12/2019", "shubhra","+1-9422203097"),

  ];

  /// Main Widget Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("blah"),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(64, 64, 122, 0.8)),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: <Widget>[
                    Text('Your History', style: TextStyle(fontSize: 20),),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
              ),
              ListTile(
                title: Text('History'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => History() ));

                 // Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(' Settings'),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(' Logout'),
                onTap: () {

                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body: Material( type: MaterialType.transparency,
          child: Stack(
            children:[
              Container( color: Color.fromARGB(255, 211, 211, 211),
              child: ListView(
                children: Base.userlist.map((user) => User(user)).toList(),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:600.0, left: 300, bottom: 10),
              child: SizedBox( height: 100,width: 100,
                child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      size: 60,
                      color: Color.fromRGBO(44, 44, 84, 0.9),),
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