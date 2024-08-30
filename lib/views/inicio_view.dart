import 'package:dicas_saude/components/card_cardapio.dart';
import 'package:dicas_saude/components/titulo.dart';
import 'package:flutter/material.dart';

class InicioView extends StatefulWidget {
  const InicioView({super.key});

  @override
  State<InicioView> createState() => _InicioViewState();
}

class _InicioViewState extends State<InicioView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Titulo1(texto: 'Olá, Kayky!', tamanho: 30),
        Row(
          children: [
            Text('Neste dia: ', style: TextStyle(fontSize: 19),),
          ]
        ),
        CardCardapio(titulo: 'Peso', descricao: '61kg', imagem: 'assets/images/peso.png', ),
        CardCardapio(titulo: 'Altura', descricao: '1.74m', imagem: 'assets/images/altura.png', ),
        CardCardapio(titulo: 'IMC', descricao: 'Peso normal pela idade ', imagem: 'assets/images/imc.png', ),
        
      ],
    );
  }
}