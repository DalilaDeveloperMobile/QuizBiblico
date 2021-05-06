import 'package:flutter/material.dart';

class InicioTema extends StatelessWidget {
  const InicioTema({
    Key key,
  }) : super(key: key);

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
          left: 5.0,
          right: 5.0,
        ),
        child: Text(
          'QUIZ BÍBLICO',
          style: TextStyle(
            fontSize: 27,
            color: Color.fromRGBO(146, 84, 44, 0.9),
            fontFamily: 'Shrikhand',
          ),
        ),
      ),
    );
  }
}
