import 'package:flutter/material.dart';



class ListControl extends StatefulWidget {
  ListControl({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListControlState createState() => new _ListControlState();
}

class _ListControlState extends State<ListControl> {
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hi "),
      ),
      body: new Container(
        child: new ListView.builder(
            itemCount: palette.length,
            itemBuilder: (context, index) => new Hero(
              tag: palette[index].keys.first,
              child: new GestureDetector(
                onTap: () {
                  Navigator
                      .of(context)
                      .push(new ColorPageRoute(palette[index]));
                },
                child: new Container(
                  height: 64.0,
                  width: double.infinity,
                  color: new Color(palette[index].values.first),
                  child: new Center(
                    child: Container(color: Colors.red,)
//                    child: new Hero(
//                      tag: 'text-${palette[index].keys.first}',
//                      child: new Text(
//                        palette[index].keys.first,
//                        style: Theme.of(context).textTheme.title.copyWith(
//                          color: Colors.white,
//                        ),
//                      ),
//                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Map<String, int> color;

  SecondPage({this.color});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Color'),
      ),
      body: new Hero(
        tag: color.keys.first,
        child: new Container(
          color: new Color(color.values.first),
          child: new Center(
            child: new Hero(
              tag: 'text-${color.keys.first}',
              child: new Text(
                color.keys.first,
                style:
                Theme.of(context).textTheme.title.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColorPageRoute extends MaterialPageRoute {
  ColorPageRoute(Map<String, int> color)
      : super(
      builder: (context) => new SecondPage(
        color: color,
      ));

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}