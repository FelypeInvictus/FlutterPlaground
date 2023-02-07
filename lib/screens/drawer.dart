import 'package:flutter/material.dart';

enum OPCOES { CONFIGURACOES, SAIR }

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuWidget(),
        ],
      ),
      drawer: DrawerWidget(),
    );
  }
}

class PopupMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<OPCOES>(
      icon: Icon(Icons.more_vert),
      onSelected: null,
      itemBuilder: (context) => <PopupMenuEntry<OPCOES>>[
        PopupMenuItem(child: Text('Opções')),
        PopupMenuItem(value: OPCOES.SAIR, child: Text('Sair')),
      ],
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 75),
        children: [
          DrawerTile(icon: Icons.home, txt: 'Home'),
          DrawerTile(icon: Icons.account_circle, txt: 'Perfil'),
          DrawerTile(icon: Icons.build, txt: 'Alterar dados'),
        ],
      ),
    );
  }
}

DrawerTile({
  required IconData icon,
  required String txt,
}) =>
    Container(
      padding: EdgeInsets.only(left: 32),
      height: 60,
      child: Row(
        children: [
          Icon(icon, size: 32, color: Colors.lightGreen),
          SizedBox(width: 32),
          Text(
            txt,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
