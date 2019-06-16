import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/list_control.dart';
import 'package:flutter_app/temp/base.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() => runApp(MaterialApp(
  title: "graph",
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(uri: "http://10.0.2.2:4000/graphql");
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
        GraphQLClient(link: httpLink as Link, cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject))
    );



    return GraphQLProvider(
      child: Temp(),
      client: client,

//      MaterialApp(
//      home: Base()
//    );
    );}
}

class Temp extends StatefulWidget{

  TempState createState()=> TempState();
}

class TempState extends State<Temp>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("GRAOHQL"), ),
      body:  Query(options: QueryOptions(document: r"""
        query getSingleCourse($courseID: Int!) {
          course(id: $courseID) {
            title
            author
            description
            topic
            url
          }
        }  
        """,
      variables: <String,dynamic>{

        "courseID":1,
      }), builder: ( QueryResult result, {
        VoidCallback refetch,
      }){
        if(result.data==null){return Text("no data fpund");}
        return Column(
          children: <Widget>[
            Text(result.data['course']['title']),
            Text(result.data['course']['author'])
          ],
        );

      }),
    );
  }

}