import 'package:dicas_saude/components/barra_navigacao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Saúde em dia',
            style: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: BarraNavigacao(),
        floatingActionButton: Container(
    margin: EdgeInsets.only(bottom: 69), 
    child: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    ),
      ),
    ),
    );
  }
}