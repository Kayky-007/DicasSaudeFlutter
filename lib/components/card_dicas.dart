// card_hospital.dart
import 'package:flutter/material.dart';

class CardDicas extends StatelessWidget {
  final String nome;
  final String descricao;
  final String telefone;
  final String especialidades;

  const CardDicas({
    Key? key,
    required this.nome,
    required this.descricao,
    required this.telefone,
    required this.especialidades,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nome,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Endereço: $descricao'),
            SizedBox(height: 8),
            Text('Telefone: $telefone'),
            SizedBox(height: 8),
            Text('Especialidades: $especialidades'),
          ],
        ),
      ),
    );
  }
}
