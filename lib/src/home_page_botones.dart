import 'package:flutter/material.dart';

class MypagesSumaNumeros extends StatefulWidget {
  const MypagesSumaNumeros({super.key});

  @override
  State<MypagesSumaNumeros> createState() => _MypagesSumaNumerosState();
}

class _MypagesSumaNumerosState extends State<MypagesSumaNumeros> {
  @override
  final EstiloPrincipalTextop = TextStyle(fontWeight:  FontWeight.bold, color:  Colors.red, fontSize: 20);
  int conteo = 0;
  final EstiloSecundarioTextp = TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color:  Colors.black);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma Numeros'),
      ),
      body: Center(
      
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text('Numeros', style:  EstiloPrincipalTextop,),
            Text( '$conteo', style:  EstiloSecundarioTextp,),

          ],
          ),
        
      
      ),
      floatingActionButton: _crearBotones(),
    );
  }
  
  Widget _crearBotones() {
    return Row(

      children: [
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.remove),
        onPressed: () {
          _restarNumeros();
        },
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            _resetearNumeros();
          },
        ),
        SizedBox(width: 15,),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _sumarNumeros();
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
  
  void _resetearNumeros() {
    setState(() {
      conteo = 0;
    });
  }
  
  void _sumarNumeros() {
    setState(() {
      conteo++;
    });
  }
}