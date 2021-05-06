import 'package:flutter/material.dart';

import '../../utils/app_rotas.dart';
import '../../models/modelo.dart';


// enum Marcado { OffMarcado, OnMarcado }

class NumeroItem extends StatefulWidget {
  
  final Perguntas modelo;
  const NumeroItem(this.modelo);

  @override
  _NumeroItemState createState() => _NumeroItemState();
}

class _NumeroItemState extends State<NumeroItem> {
  //Marcado _marcado = Marcado.OnMarcado;
  
  //bool _isButtonMarcar = true;

//void _switchMarcado(){
//    if(_marcado == Marcado.OnMarcado){
//      setState(() {
//        _marcado = Marcado.OffMarcado;
//      });
//    }else{
//      setState(() {
//       _marcado = Marcado.OnMarcado;
//      });
//    }   
//  }


  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () => {
      Navigator.of(context).pushReplacementNamed(
      AppRoutes.PERGUNTAS,
      arguments: widget.modelo,
    ),
     // setState(() => _switchMarcado()),
    //setState(() => alternaButton()),
      },
      child: Container(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Text(  //_marcado == Marcado.OnMarcado ?  
        widget.modelo.id,
        // : 'N',
      style: TextStyle(
        fontSize: 26,
        color: Color.fromRGBO(146, 84, 44, 0.9),
        fontFamily: 'Shrikhand',
      ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
      colors: [
        Colors.white.withOpacity(0.5),
        Colors.white,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
            ),
          ),
        ),
    );
  }
  // alternaButton() {
  //    setState(() => _isButtonMarcar = !_isButtonMarcar);
  // }
}

