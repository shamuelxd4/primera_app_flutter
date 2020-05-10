import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState () => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _tamTexto = new TextStyle(fontSize: 25.0);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador:', style: _tamTexto),
            Text('$_contador', style: _tamTexto),
          ],
        )      
      ),
      floatingActionButton: _crearBotones()
            
    ) ;
  }//build


  Widget _crearBotones () {
    return Row(
      //espacio em todo el row == mainAxisAlignment
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //espacio entre iconos == SizedBox(width: "numero",),
        //Expanded(child: SizedBox(width:0,)), un nuevo widget
        SizedBox(width: 35.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero) ,onPressed: _reset),        
        Expanded(child: SizedBox(width:0,)),
        FloatingActionButton(child: Icon(Icons.remove) ,onPressed: _sustraer),
        SizedBox(width: 7.0,),
        FloatingActionButton(child: Icon(Icons.add) ,onPressed: _agregar),
      ],
    );
  }

  void _agregar(){
    setState(() {
      _contador++;
    });
  }

  void _sustraer(){
    setState(() {
      _contador--;
    });
  }

  void _reset(){
    setState(() {
      _contador= 0;
    });
  }

}
