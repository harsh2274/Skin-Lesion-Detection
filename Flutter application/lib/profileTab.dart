import 'package:flutter/material.dart';
import 'package:skin_disease/card.dart';

class Profiletab extends StatelessWidget {
  const Profiletab ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pic.jpg'),
            ),
            Text(
              'Akshat Garg',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InfoCard(
                text: 'garg_akshat',
                icon: Icons.verified_user,
            ),
            InfoCard(
              text: 'garg.akshat2291@gmail.com',
              icon: Icons.email,
            ),
            InfoCard(
              text: '+91 7906153535',
              icon: Icons.phone,
            ),
            InfoCard(
              text: 'Delhi, India',
              icon: Icons.location_city,
            ),
            InfoCard(
              text: 'Logout',
              icon: Icons.logout,
            ),
          ],
        )
      ),
    );
  }
}