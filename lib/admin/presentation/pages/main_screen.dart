import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parker/auth/presentation/pages/sign_in_screen.dart';
import 'package:parker/test/presentation/pages/info_screen.dart';
import 'package:parker/test/presentation/pages/profile_screen.dart';
import 'package:parker/test/presentation/pages/report_screen.dart';
import 'package:parker/test/presentation/pages/reserve_screen.dart';

class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({Key? key}) : super(key: key);

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  final List<String> _pageNames = [
    'Home Screen',
    'Report Screen',
    'Information',
    'Profile',
  ];
  final List<Widget> _pages = [
    const ReserveScreen(),
    const ReportScreen(),
    const InfoScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;
  void changePage(int pageIndex) {
    setState(() {
      _selectedIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            },
            icon: const Icon(Icons.logout),
          ),
        ],
        title: Text(
          _pageNames[_selectedIndex],
          style: const TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: changePage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'management'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_on_clipboard), label: 'reports'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.car_detailed), label: 'partings'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'profile'),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
