import 'package:flutter/material.dart';
import './user_model.dart';
import './user.dart';
import 'package:flutter_app/temp/create_post.dart';

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

        body: Material( type: MaterialType.transparency,
          child: Stack(
            children:[


              Padding(
                padding: const EdgeInsets.only(top:100.0),
                child: Container( color: Color.fromARGB(255, 211, 211, 211),
                child: ListView(
                  children: Base.userlist.map((user) => User(user)).toList(),
                ),
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

              Scaffold(
                appBar: AppBar(title: Text("blah")),
                body: Center(child: Text('My Page!')),
                drawer: Drawer(
                  // Add a ListView to the drawer. This ensures the user can scroll
                  // through the options in the drawer if there isn't enough vertical
                  // space to fit everything.
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        child: Text('Drawer Header'),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        title: Text('Item 1'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text('Item 2'),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),


            ] ),
        ),
      ),
    );
  }
}