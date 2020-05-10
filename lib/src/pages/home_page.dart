import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final tamTexto = new TextStyle(fontSize: 25.0);
  final contador = 10;

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('titulo', style: tamTexto,),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('hola mundo!!', style: tamTexto),
          Text('$contador', style: tamTexto),
        ],
      )      
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print('object');
        //contador = contador+1;
      },
    ),
    
  ) ;
 }
}