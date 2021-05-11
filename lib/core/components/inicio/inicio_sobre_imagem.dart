import 'package:flutter/material.dart';

class InicioSobreImagem extends StatelessWidget {
  const InicioSobreImagem({
    Key key,
    @required this.isLandscape,
    @required this.constraints,
  }) : super(key: key);

  final bool isLandscape;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      height: isLandscape
          ? constraints.maxHeight * 0.4
          : constraints.maxHeight * 0.3,
      child: Image.asset(
        'images/Logo.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
