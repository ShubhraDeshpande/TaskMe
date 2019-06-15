import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  HomeState createState()=> HomeState();
}

class HomeState extends State<Home>{
  List<Widget> litems = [_getListTile("1st"),_getListTile("2nd"), _getListTile("3rd"), _getListTile("4th") ];
  final palette = [
    {'#E53935': 0xFFE53935},
    {'#D81B60': 0xFFD81B60},
    {'#8E24AA': 0xFF8E24AA},
    {'#5E35B1': 0xFF5E35B1},
    {'#3949AB': 0xFF3949AB},
    {'#1E88E5': 0xFF1E88E5},
    {'#039BE5': 0xFF039BE5},
    {'#00ACC1': 0xFF00ACC1},
    {'#00897B': 0xFF00897B},
    {'#43A047': 0xFF43A047},
    {'#7CB342': 0xFF7CB342},
    {'#C0CA33': 0xFFC0CA33},
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Material(
        elevation: 6.0,
        child: Container(
//          height: MediaQuery.of(context).size.height,
//          width: MediaQuery.of(context).size.width,
          height: 500,
          width: 400,
          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 400,
                width: 400,
                color: Colors.yellow,
                child: new ListView.builder
                  (
                    itemCount: litems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return litems[index];
                    }
                ),
              )

            ],
          )

        ),
      ),

    );
  }


static Widget _getListTile(text){
    return Material(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: 100,
        color: Colors.red, child: Text(text),),
      ),
    );
}
}