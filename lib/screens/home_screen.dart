import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/strings_manager.dart';
import 'package:zoom_clone/screens/contacts_screen.dart';
import 'package:zoom_clone/screens/meet_screen.dart';
import 'package:zoom_clone/screens/meetings_screen.dart';
import 'package:zoom_clone/screens/settings_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  static const rootName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  final List<Widget> _screen = [
    const MeetAndChatScreen(),
    const MeetingsScreen(),
    const ContactsScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_page],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: StringsManager.label1),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: StringsManager.lebel2),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined),
                label: StringsManager.lebel3),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: StringsManager.lebel4),
          ]),
    );
  }
}
