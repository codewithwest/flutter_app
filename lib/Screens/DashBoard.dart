import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'DashBoard/Favourites.dart';
import 'DashBoard/Feed.dart';
import 'DashBoard/Home.dart';
import 'DashBoard/Settings.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<Widget> _screens = [
    // Content for Home tabr
    const ContentDisplayScreen(),
    feed(),
    favourites(),
    settings(),

    // Content for Feed tab
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    theme();
    return WillPopScope(
        onWillPop: () async {
          if (_selectedIndex == 0) {
            return true;
          }
          setState(() {
            _selectedIndex = 0;
          });
          return false;
        },
        child: Scaffold(
          // appBar: AppBar(
          //title: const Text("Responsive site"),
          //#actions: <Widget>[
          //# IconButton(
          //  #    icon: const Icon(Icons.person),
          //   tooltip: 'Open Profile',
          // onPressed: () {})
          //],
          //),
          bottomNavigationBar: MediaQuery.of(context).size.width < 640
              ? BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.indigoAccent,
                  // called when one tab is selected
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  // bottom tab items
                  items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.feed), label: 'Feed'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite), label: 'Favorites'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: 'Settings')
                    ])
              : null,
          body: Row(
            children: [
              if (MediaQuery.of(context).size.width >= 640)
                NavigationRail(
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  selectedIndex: _selectedIndex,
                  destinations: const [
                    NavigationRailDestination(
                        icon: Icon(Icons.home), label: Text('Home')),
                    NavigationRailDestination(
                        icon: Icon(Icons.feed), label: Text('Feed')),
                    NavigationRailDestination(
                        icon: Icon(Icons.favorite), label: Text('Favorites')),
                    NavigationRailDestination(
                        icon: Icon(Icons.settings), label: Text('Settings')),
                  ],

                  labelType: NavigationRailLabelType.all,
                  selectedLabelTextStyle: const TextStyle(
                    color: Colors.teal,
                  ),

                  unselectedLabelTextStyle: const TextStyle(),
                  // Called when one tab is selected
                  leading: Column(
                    children: const [
                      SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                    ],
                  ),
                ),
              Expanded(child: _screens[_selectedIndex])
            ],
          ),
          //this is optional
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
