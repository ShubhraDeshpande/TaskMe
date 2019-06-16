import "package:flutter/material.dart";
import "./user_model.dart";
import "./user_details.dart";
class User extends StatelessWidget {
  final UserModel _user;
  final bool base;

  User(this._user, this.base);

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromRGBO(247, 241, 227, 0.9),
//      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
//      color: Color.fromRGBO(247, 241, 227, 0.9),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => base ?  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail(_user))):
          _showDialog1(context),
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
                            Container(height: 20,width: 100,color: Color.fromRGBO(64, 64, 122, 0.3),
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Category ", style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                            Container(height: 20,width: 100,color: Colors.white70,child: Padding(
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
                            Container(height: 20,width: 100,color: Color.fromRGBO(64, 64, 122, 0.3),child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text("Payment ", style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                            )),
                            Container(height: 20,width: 100,color: Colors.white70,child: Padding(
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

  void _showDialog1(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

