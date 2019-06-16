import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget{
  CreatePostState createState()=> CreatePostState();
}

class CreatePostState extends State<CreatePost>{
  final _formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController payController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController reqController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    List<String> _category = ['Maintainence', 'HouseHold', 'Personal Care', 'Other'];
    String _selectedLocation;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Post a Job'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(220, 220, 220, 1),
      ),
      body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: Material(
            elevation: 18,
            borderRadius: BorderRadius.circular(10),
            child: new Form(
              key: this._formKey,
              child: new ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: new TextFormField(
                        keyboardType: TextInputType.text,
                        controller: titleController,
                        decoration: new InputDecoration(
                            hintText: 'Title of your task',
                            labelText: 'Title'
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: DropdownButton(
                      hint: Text('Please choose a location'), // Not necessary for Option 1
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _category.map((category) {
                        return DropdownMenuItem(
                          child: new Text(category),
                          value: category,
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.number,
                      controller: payController,
                      decoration: new InputDecoration(
                          hintText: 'Your budget for this job',
                          labelText: 'Pay',
                          suffixIcon: Icon(
                            Icons.attach_money,
                          ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.text,
                      controller: reqController,
                      decoration: new InputDecoration(
                          hintText: 'Eg: Tools, Hardware, Brushes etc.',
                          labelText: 'Additional Requirements'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: new TextFormField(
                        keyboardType: TextInputType.text, // Use secure text for passwords.
                      controller: descriptionController,
                        decoration: new InputDecoration(
                            hintText: 'A brief description of your task',
                            labelText: 'Description'
                        ),
                      maxLines: 3,
                    ),
                  ),
                  new Container(
                    width: screenSize.width,
                    child: new RaisedButton(
                      child: new Text(
                        'Submit',
                        style: new TextStyle(
                            color: Colors.white
                        ),
                      ),
                      onPressed: () => _submitAction(),
                      color: Colors.amber,
                    ),
                    margin: new EdgeInsets.all(
                        20.0
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

  _submitAction() {
    var title = titleController.text;
    var pay = payController.text;
    var requirement = reqController.text;
    var description = descriptionController.text;

    print ("$title\n$pay\n$requirement\n$description");

    FocusScope.of(context).requestFocus(new FocusNode());
  }
}