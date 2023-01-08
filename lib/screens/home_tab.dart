import 'package:flutter/material.dart';

List<Map> doctors = [
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Gardner Pearson',
    'doctorTitle': 'Heart Specialist'
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Rosa Williamson',
    'doctorTitle': 'Skin Specialist'
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Gardner Pearson',
    'doctorTitle': 'Heart Specialist'
  },
  {
    'img': 'assets/doctor03.jpeg',
    'doctorName': 'Dr. Rosa Williamson',
    'doctorTitle': 'Skin Specialist'
  }
];

class HomeTab extends StatelessWidget {
  //final void Function() onPressedScheduleCard;

  const HomeTab({
    Key? key,
    //required this.onPressedScheduleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  UserIntro(),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                // SizedBox(
                //   height: 20,
                // ),

                QuickCheckingEmotions(),

                SizedBox(
                  height: 50,
                ),

                SizedBox(
                  height: 30,
                ),

                // AppointmentCard(onTap: onPressedScheduleCard),

                SizedBox(
                  height: 70,
                ),
              ]),
        ),
      ]),
    );
  }
}

class QuickCheckingEmotions extends StatelessWidget {
  const QuickCheckingEmotions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 150,
      //width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 16, 214, 188),
              Colors.blue,
            ],
          )),

      //Inserir emoticons
      child: Material(
        color: Colors.transparent,
        child: ListView(
          //padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Como você está se sentindo hoje?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 250, 250),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: () => (print("doente")),
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/doente.png'),
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      onPressed: () => (print("feliz")),
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/contente.png'),
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      onPressed: () => (print("aborecido")),
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/aborrecido.png'),
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      onPressed: () => (print("Não sabe")),
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/nao_sabe.png'),
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      onPressed: () => (print("triste")),
                      icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/quick_checking_emotions/icons/triste.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class UserIntro extends StatelessWidget {
  const UserIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/profile/user/user_default.png'),
              radius: 30,
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello,',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white),
            ),
            Text(
              //Username
              'Mr.Invictus 👋',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
