import 'package:fitness_ai/components/personal_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile page'),
      ),
      body: ListView(
        children: [
          PersonalCard(
            userName: 'Ndahirwa Sosthene',
            title: 'Software Engineer',
          )
        ],
      ),
    );
  }
}
