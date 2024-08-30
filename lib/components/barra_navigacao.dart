import 'package:dicas_saude/views/dicas_view.dart';
import 'package:dicas_saude/views/inicio_view.dart';
import 'package:dicas_saude/views/monitoramento_view.dart';
import 'package:dicas_saude/views/perfil_view.dart';
import 'package:flutter/material.dart';

class BarraNavigacao extends StatefulWidget {
  const BarraNavigacao({super.key});

  @override
  State<BarraNavigacao> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<BarraNavigacao> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: [
          Scaffold(
            
            body: InicioView()
            
          ),
          Scaffold(
            
            body: MonitoramentoView()
            
          ),
           Scaffold(
            
            body: DicasView()
            
          ),
          Scaffold(
            
            body: PerfilView()
            
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const  <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.signal_cellular_alt),
            ),
            label: 'Monitoramento',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.lightbulb),
            ),
            label: 'Dicas de Saúde',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.person),
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}