import 'package:flutter/material.dart';

import '../../models/modelo.dart';

class PerguntasAlternativasTema extends StatelessWidget {
  const PerguntasAlternativasTema({
    Key key,
    @required this.modelo,
  }) : super(key: key);

  final Perguntas modelo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[200],
        border: Border(
          left: BorderSide(
            color: Colors.orange[100],
            width: 13.0,
          ),
          bottom: BorderSide(
            //                    <--- bottom side
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
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.0,
          right: 13.0,
        ),
        child: Text(
          'PERGUNTA ${modelo.id}',
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(146, 84, 44, 0.9),
            fontFamily: 'Shrikhand',
          ),
        ),
      ),
    );
  }
}

