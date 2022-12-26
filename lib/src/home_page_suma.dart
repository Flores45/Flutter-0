import 'package:flutter/material.dart';

class MyPagesSumas extends StatefulWidget {
  const MyPagesSumas({super.key});

  @override
  State<MyPagesSumas> createState() => _MyPagesSumasState();
}

class _MyPagesSumasState extends State<MyPagesSumas> {
  int conteo = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma Numeros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Acumulador Numeros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '$conteo',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  _crearBotones() {
    return Row(
      children: [
        SizedBox(width: 25,),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            _restarNumeros();
          },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.exposure_zero),
        onPressed: () {
          _contadorReset();
        },
        ),
        SizedBox(width: 15,),
        FloatingActionButton(child: Icon(Icons.add),
        onPressed: () {
          _aumentarSuma();
        },
        )
      ],
    );
  }
  
  void _restarNumeros() {
    setState(() {
      conteo--;
    });
  }
  
  void _contadorReset() {
    setState(() {
      conteo=0;
    });
  }
  
  void _aumentarSuma() {
    setState(() {
      conteo++;
    });
    
  }
}
