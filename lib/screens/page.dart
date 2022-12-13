import 'package:flutter/material.dart';
import 'package:yoga_pose/screens/account/page.dart';
import 'package:yoga_pose/screens/home_page/page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedTabIndex = 0;
  final _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() => _selectedTabIndex = index);
  }

  void _selectedTab(int index) {
    _pageController.jumpToPage(index);
  }

  final _bodyList = const [
    HomePage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _bodyList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedTab,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTabIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
          label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account'
          ),
        ],
      ),
    );
  }
}
