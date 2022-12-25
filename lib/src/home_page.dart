import 'package:flutter/material.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
// ignore: non_constant_identifier_names
  final TextPrincipal = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.red, fontSize: 20);

// ignore: non_constant_identifier_names
  final TextSecundario = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30);

// ignore: non_constant_identifier_names
  final TextAppBar = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 30, 233, 37),
      fontSize: 20);

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Mi primera Aplicacion',
            style: TextAppBar,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero De Taps', style: TextPrincipal),
              Text(conteo.toString(), style: TextSecundario),
            ],
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _crearBotones());
  }

  void _incrementoNumeros() {
    conteo = conteo + 1;
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(
          child: Icon(Icons.remove),
         onPressed: () {
           _restarNumeros();
           setState(() {
             
           });
         },
        ),
        Expanded(child: SizedBox(width: 10,)),
        FloatingActionButton(
          child: Icon(Icons.menu_open),
          onPressed: () {
            _resetNumeros();
            setState(() {
              
            });
          },
        ),
        SizedBox(width: 10,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
             _incrementoNumeros();
            setState(() {});
          },
          
        ),
      ],
    );
  }
  
  void _restarNumeros() {
    conteo = conteo -1;
  }
  
  void _resetNumeros() {
    conteo = conteo = 0;
  }
}
