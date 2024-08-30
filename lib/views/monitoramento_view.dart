import 'package:dicas_saude/components/card_hospital.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MonitoramentoView extends StatefulWidget {
  const MonitoramentoView({super.key});

  @override
  State<MonitoramentoView> createState() => _MonitoramentoViewState();
}

class _MonitoramentoViewState extends State<MonitoramentoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitoramento de Batimentos Cardíacos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gráfico de Batimentos Cardíacos
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: const Color(0xff37434d), width: 1),
                  ),
                  minX: 0,
                  maxX: 7,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 3),
                        FlSpot(4, 4),
                        FlSpot(5, 2),
                        FlSpot(6, 3),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 2,
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Cartão de Hospital
            CardHospital(
              nome: 'Hospital Anchieta',
              endereco: 'Rua das Flores, 123',
              telefone: '(11) 98765-4321',
              especialidades: 'Cardiologia, Pediatria, Ortopedia',
            ),
          ],
        ),
      ),
    );
  }
}
