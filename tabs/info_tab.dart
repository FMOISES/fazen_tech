import 'package:flutter/material.dart';

// ignore: camel_case_types
class Info_Tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

child: Padding(
  padding: EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      const Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),

          child:
          Text(
            'O Aplicativo foi criado por Moisés Ferreira da Silva, Aluno do Curso Superior de ADS na UNOPAR',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500
            ),


            maxLines: 3,
          ),
        ),
      ),
      const Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child:
          Text(
            'Fazen-tech V1.0',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500
            ),


            maxLines: 3,
          ),
        ),
      )
  ]))
    );

  }
}

