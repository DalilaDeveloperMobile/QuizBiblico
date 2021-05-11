import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../models/modelo.dart';
import '../../utils/app_rotas.dart';

class InicioBotaoEntrar extends StatelessWidget {
  const InicioBotaoEntrar({
    Key key,
    @required this.isLandscape,
    @required this.constraints,
    this.modelo,
  }) : super(key: key);

  final bool isLandscape;
  final BoxConstraints constraints;
  final Perguntas modelo;

  void _selectEntrarApp(BuildContext context) {
  Modular.to.pushReplacementNamed(
      AppRoutes.NUMERO_PERGUNTAS,
      arguments: modelo,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectEntrarApp(context),
      child: Container(
        height: isLandscape
            ? constraints.maxHeight * .17
            : constraints.maxHeight * .09,
        width: isLandscape ? 130.0 : 160.0,
        decoration: BoxDecoration(
          color: Colors.orange[200],
          border: Border(
            left: BorderSide(
              //                    <--- left side
              color: Colors.orange[100],
              width: 13.0,
            ),
            top: BorderSide(
              //                    <--- top side
              color: Colors.orange[100],
              width: 13.0,
            ),
            right: BorderSide(
              //                    <--- right side
              color: Colors.orange[100],
              width: 13.0,
            ),
          ),
        ),
        // child: TextButton(
        //   style: TextButton.styleFrom(
        //     primary: Colors.white, // foreground
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (BuildContext context) => EscolherPergunta()));
        //   },
        // );
        child: Center(
          child: Text(
            'ENTRAR',
            style: TextStyle(
              fontSize: isLandscape ? 19 : 24,
              color: Color.fromRGBO(146, 84, 44, 0.9),
              fontFamily: 'Shrikhand',
            ),
          ),
        ),
      ),
    );
  }
}
