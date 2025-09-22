import 'package:fitness_ai/components/notification_card.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _toggled = false;

  void onClick(bool? value) {
    setState(() {
      _toggled = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          NotificationCard(),
          SizedBox(height: 10),

          Divider(thickness: 1),

          // section 1: Details
          Text(
            'Details',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 87, 84, 84),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            title: SizedBox(width: 70, child: Text('Account details')),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.navigate_next),
            horizontalTitleGap: 8,
          ),
          ListTile(
            title: SizedBox(width: 70, child: Text('Payment methods')),
            leading: Icon(Icons.payment),
            trailing: Icon(Icons.navigate_next),
            horizontalTitleGap: 8,
          ),
          ListTile(
            leading: Icon(Icons.shield),
            title: SizedBox(width: 70, child: Text('Security')),
            trailing: Icon(Icons.navigate_next),
            horizontalTitleGap: 8,
          ),

          Divider(thickness: 1),

          // section 2: App
          Text(
            'App',
            style: TextStyle(
              fontSize: 14,
              color: const Color.fromARGB(255, 87, 84, 84),
            ),
          ),
          SwitchListTile(
            value: _toggled,
            title: Text('Face ID'),
            onChanged: onClick,
          ),
          SwitchListTile(
            value: _toggled,
            title: Text('Smart Authentication'),
            subtitle: Text(
              'Skip biometric login within 15 secons after unlocking the device by biometry',
            ),
            onChanged: onClick,
          ),
        ],
      ),
    );
  }
}
