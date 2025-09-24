import 'package:fitness_ai/components/buildListTile.dart';
import 'package:fitness_ai/components/buildSwitchTile.dart';
import 'package:fitness_ai/components/notification_card.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double _scale = 1.0; // Initial scale
  final double _scaledUp = 1.2; // Scale when tapped
  final Duration _animationDuration = const Duration(milliseconds: 200);

  // double _borderWidth = 0;
  bool _faceIdEnabled = false;
  bool _smartAuthEnabled = true;
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Notification Section
            GestureDetector(
              onTap: () {
                // print('Single Tap');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Tapped on notification'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onDoubleTap: () {
                // print('Double Tap');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Double Tapped on notification'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              onVerticalDragUpdate: (details) =>
                  // ignore: avoid_print
                  print('Vertical Drag: ${details.delta.dy}'),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: Colors.yellow,
                  child: NotificationCard(),
                ),
              ),
            ),
            SizedBox(height: 24),

            // Account Section
            _buildSectionHeader('Account'),
            _buildSettingsCard([
              Buildlisttile(
                icon: Icons.person,
                title: 'Account Details',
                subtitle: 'Manage your personal information',
                onTap: () => _showComingSoon(context),
              ),

              _buildDivider(),

              Buildlisttile(
                icon: Icons.payment_outlined,
                title: 'Payment Methods',
                subtitle: 'Cards and Payment Options',
                onTap: () => _showComingSoon(context),
              ),

              _buildDivider(),

              Buildlisttile(
                icon: Icons.security_outlined,
                title: 'Privacy & Security',
                subtitle: 'Control your privacy settings',
                onTap: () => _showComingSoon(context),
              ),
            ]),
            SizedBox(height: 24),

            // App Preferences Section
            _buildSectionHeader('App Preferences'),
            _buildSettingsCard([
              Buildswitchtile(
                icon: Icons.face_outlined,
                title: 'Face ID',
                subtitle: 'Use Face ID to unlock the app',
                value: _faceIdEnabled,
                onChanged: (value) {
                  setState(() {
                    _faceIdEnabled = value;
                  });
                },
              ),

              _buildDivider(),

              Buildswitchtile(
                icon: Icons.verified_user_outlined,
                title: 'Smart Authentication',
                subtitle:
                    'Skip biometric login for 15 seconds after device unlock',
                value: _smartAuthEnabled,
                onChanged: (value) {
                  setState(() {
                    _smartAuthEnabled = value;
                  });
                },
              ),

              _buildDivider(),

              Buildswitchtile(
                icon: Icons.notifications_outlined,
                title: 'Push Notifications',
                subtitle: 'Receive updates and reminders',
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
            ]),
            SizedBox(height: 24),

            // Appearance Section
            _buildSectionHeader('Appearance'),
            _buildSettingsCard([
              Buildswitchtile(
                icon: Icons.dark_mode_outlined,
                title: 'Dark Mode',
                subtitle: 'Switch to dark theme',
                value: _darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _darkModeEnabled = value;
                  });
                },
              ),
              _buildDivider(),
              Buildlisttile(
                icon: Icons.language_outlined,
                title: 'Language',
                subtitle: 'English',
                onTap: () => _showComingSoon(context),
              ),
            ]),
            SizedBox(height: 24),

            // Support Section
            _buildSectionHeader('Support'),
            _buildSettingsCard([
              Buildlisttile(
                icon: Icons.help_outline,
                title: 'Help Center',
                subtitle: 'Get help and support',
                onTap: () => _showComingSoon(context),
              ),
              _buildDivider(),
              Buildlisttile(
                icon: Icons.feedback_outlined,
                title: 'Send Feedback',
                subtitle: 'Report issues or suggest features',
                onTap: () => _showComingSoon(context),
              ),
              _buildDivider(),
              Buildlisttile(
                icon: Icons.info_outline,
                title: 'About',
                subtitle: 'App version and information',
                onTap: () => _showAboutDialog(context),
              ),
            ]),
            SizedBox(height: 32),

            // Sign Out Button
            _buildSignOutButton(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 4, bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildSettingsCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      thickness: 0.5,
      indent: 68,
      endIndent: 20,
      color: Colors.grey[200],
    );
  }

  Widget _buildSignOutButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.red,
        highlightColor: Colors.redAccent,
        onTap: _handleTap,
        onDoubleTap: _handleDoubleTap,
        child: AnimatedScale(
          scale: 1,
          duration: Duration(seconds: 1),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: ElevatedButton(
              onPressed: () => _showSignOutDialog(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[50],
                foregroundColor: Colors.red[700],
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.red[200]!),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Coming soon!'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('About'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('App Version: 1.0.0'),
            SizedBox(height: 8),
            Text('Build: 2024.1'),
            SizedBox(height: 8),
            Text('© 2024 Your Company'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sign Out'),
        content: Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              _showComingSoon(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,
            ),
            child: Text('Sign Out'),
          ),
        ],
      ),
    );
  }

  void _handleTap() {
    setState(() {
      _scale = _scale == 1.0
          ? _scaledUp
          : 1.0; // Toggle between normal and scaled
    });
  }

  void _handleDoubleTap() {
    setState(() {
      _scale = _scale == 1.0
          ? _scaledUp + 0.3
          : 1.0; // Toggle between normal and scaled
    });
  }
}
