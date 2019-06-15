import "package:flutter/material.dart";
import "user_model.dart";

class UserDetail extends StatelessWidget {
  final UserModel _user;

  UserDetail(this._user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_user.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              /// This is the important part, we need [Hero] widget with unique tag but same as Hero's tag in [User] widget.
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
          ],
        ),
      ),
    );
  }
}