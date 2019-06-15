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
                      SizedBox(width:60),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(height: 20,width: 100,color: Colors.amber,child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Category ", style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                            Container(height: 20,width: 100,color: Colors.grey,child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(_user.category, style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(height: 20,width: 100,color: Colors.amber,child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Payment ", style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                            Container(height: 20,width: 100,color: Colors.grey,child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(_user.payRange.toString()+" \$", style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                          ],
                        ),
                      ),],),
                    ],)
                  ],
                )
            ),
          ),
        ),

    );
  }
}