import "package:flutter/material.dart";
import "./user_model.dart";
import "./user_details.dart";
class User extends StatelessWidget {
  final UserModel _user;

  User(this._user);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
        color: Colors.white,),
        child: InkWell(
          onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail(_user))),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Hero(
                  tag: "avatar_" + _user.id.toString(),
                  child: CircleAvatar(
                    radius: 32,
                    //backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
                    
                    backgroundImage: NetworkImage(_user.avatar),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      /// Give name text a Padding
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_user.title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Distance: "+_user.address, style: TextStyle(fontSize: 14 , fontFamily: "VT323"),),
                    ),
                    Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:80.0),
                        child: Container(height: 30, width: 100,color: Color.fromARGB(255, 211, 211, 211),child: Text(_user.category),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 30, width: 100,color: Color.fromARGB(255, 211, 211, 211),child: Text(_user.payRange.toString()),),
                      )
                    ],)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}