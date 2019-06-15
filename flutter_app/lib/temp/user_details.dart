import "package:flutter/material.dart";
import "user_model.dart";
import 'package:flutter_app/temp/base.dart';

class UserDetail extends StatelessWidget {
  final UserModel _user;


  UserDetail(this._user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:30.0, right: 300),
              child: IconButton(icon: Icon(Icons.arrow_back, size: 40),onPressed: (){Navigator.pop(context);},),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Hero(
                tag: "avatar_" + _user.id.toString(),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(_user.avatar),
                ),
              ),
            ),
            Text(_user.title,
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            Divider(),
            Container(height: 100,child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_user.description, style: TextStyle(fontSize: 14),),
            )),
            Row(children: <Widget>[Padding(
              padding: const EdgeInsets.only(left:28.0, top:8, bottom: 8, right: 8),
              child: Text("Posted By: "+_user.postedBy,style: TextStyle(fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Posted on: "+_user.date,style: TextStyle(fontSize: 16),),
            )],),
            //SizedBox(height: 50),
            Row(children: <Widget>[

              Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(height: 50,width: 180,color: Colors.amber,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Category ", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  )),
                  Container(height: 50,width: 180,color: Colors.white70,child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_user.category, style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  )),
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(height: 50,width: 180,color: Colors.amber,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Payment ", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                    )),
                    Container(height: 50,width: 180,color: Colors.white70,child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_user.payRange.toString()+" \$", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                    )),
                  ],
                ),
              ),],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(onPressed: (){}, child: Container(
                height: 50,width: 250,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), border: Border.all(width: 2, color: Colors.amber),),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(child: Text("Claim the Job", style: TextStyle(fontSize: 20, color: Colors.black, ),textAlign: TextAlign.center,),
                    onTap: (){
                      _showDialog(context);
                    },
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }


  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Congratualtions!\n You have a new job"),
          content: new Text("The Job Poster is\n"+_user.postedBy),
          actions: <Widget>[
            Column(
              children: <Widget>[
                Text("Please Contact over"+_user.phone),
                new FlatButton(
                  child: new Text("Done"),
                  onPressed: () {
                    Base.history.add(Base.userlist[_user.id]);
                    Base.userlist.removeAt(_user.id);

                   // Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Base()));
                  },
                ),
              ],
            ),
            // usually buttons at the bottom of the dialog

          ],
        );
      },
    );
  }


}