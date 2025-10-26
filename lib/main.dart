import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  const ProfileCardApp({Key? key}) : super(key: key);

  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card App'),
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.color_lens_outlined),
              onSelected: (value) {
                setState(() {
                  if (value == 'Light') themeMode = ThemeMode.light;
                  if (value == 'Dark') themeMode = ThemeMode.dark;
                  if (value == 'System') themeMode = ThemeMode.system;
                });
              },
              itemBuilder: (context) => const [
                PopupMenuItem(value: 'Light', child: Text('Tema Terang')),
                PopupMenuItem(value: 'Dark', child: Text('Tema Gelap')),
                PopupMenuItem(value: 'System', child: Text('Sesuai Sistem')),
              ],
            ),
          ],
        ),
        body: const ProfilePage(),
      ),
    );
  }
}
