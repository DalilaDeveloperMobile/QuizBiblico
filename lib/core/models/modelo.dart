// Lista Modelo
import 'package:flutter/material.dart';

class Perguntas{
  final String id;
  final String pergunta;
  final String alternativas1;
  final String alternativas1Imagem;
  final String alternativas2;
  final String alternativas2Imagem;
  final String alternativas3;
  final String alternativas3Imagem;
  final String resposta1;
  final String resposta2;
  final String resposta3;
  
  
const Perguntas({
    @required this.id,
    @required this.pergunta,
    @required this.alternativas1,
    @required this.alternativas1Imagem,
    @required this.alternativas2,
    @required this.alternativas2Imagem,
    @required this.alternativas3,
    @required this.alternativas3Imagem,
    @required this.resposta1,
    @required this.resposta2,
    @required this.resposta3,
  }); 

}
