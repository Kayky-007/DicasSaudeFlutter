import 'package:flutter/material.dart';

class PerfilView extends StatefulWidget {
  const PerfilView({super.key});

  @override
  State<PerfilView> createState() => _PerfilViewState();
}

class _PerfilViewState extends State<PerfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Perfil'),
        actions: [
          IconButton(
            icon:  Icon(Icons.edit),
            onPressed: () {
              // Ação para editar o perfil
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/fotoPerfil.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                 SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      'Kayky da Silva Costa',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 8),
                    Text(
                      'kayky7costa@hotmail.com',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                     SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {
                      },
                      child:  Text(
                        'https://github.com/Kayky-007',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                 Spacer(),
                IconButton(
                  icon:  Icon(Icons.settings),
                  onPressed: () {
                  },
                ),
              ],
            ),
             Divider(height: 40, thickness: 1),
             ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Localização'),
              subtitle: Text('São Paulo, Brasil'),
            ),
             ListTile(
              leading: Icon(Icons.work),
              title: Text('Profissão'),
              subtitle: Text('Desenvolvedor de Software'),
            ),
             ListTile(
              leading: Icon(Icons.school),
              title: Text('Educação'),
              subtitle: Text('Bacharelado em Engenharia de Software'),
            ),
             SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child:  Text('Adicionar Amigo'),
            ),
          ],
        ),
      ),
    );
  }
}
