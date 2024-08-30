import 'package:dicas_saude/components/card_dicas.dart';
import 'package:dicas_saude/components/espacamento_h.dart';
import 'package:flutter/material.dart';
import 'package:dicas_saude/components/card_hospital.dart'; // Importe o CardHospital

class DicasView extends StatefulWidget {
  const DicasView({super.key});

  @override
  State<DicasView> createState() => _DicasViewState();
}

class _DicasViewState extends State<DicasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          children: [
            // Imagem do hospital
            Image.asset(
              'assets/images/hospital2.jpg',
              fit: BoxFit.cover, 
            ),
             EspacamentoH(h: 19),
            CardDicas(nome: 'Resfriado', 
            descricao: 'Descricao da doença', 
            telefone: 'Telefone do hospital', 
            especialidades: 'Especialidades especialista no caso'),
             EspacamentoH(h: 19),
            CardDicas(nome: 'COVID-19', 
            descricao: 'Descricao da doença', 
            telefone: 'Telefone do hospital', 
            especialidades: 'Especialidades especialista no caso'),
             EspacamentoH(h: 19),
            CardDicas(nome: 'Manchas na pele', 
            descricao: 'Descricao da doença', 
            telefone: 'Telefone do hospital', 
            especialidades: 'Especialidades especialista no caso'),
          ],
        ),
      ),
    );
  }
}
