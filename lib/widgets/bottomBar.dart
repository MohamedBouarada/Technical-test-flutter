import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
  final int selectedIndex;
  BottomBar({required this.selectedIndex});
}

class _BottomBarState extends State<BottomBar> {
  late int _selectedIndex = widget.selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: BottomAppBar(
        color: Color.fromRGBO(255, 255, 255, 0.59),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomNavigationBarItem(
                Icons.phone_android, 'Dashbaord', 0, '/childDashboard'),
            buildBottomNavigationBarItem(
                Icons.phone_android, 'Phone usage', 1, '/applicationList'),
            buildBottomNavigationBarItem(
                Icons.phone_android, 'Social media', 2, '/childDashboard'),
            buildBottomNavigationBarItem(
                Icons.phone_android, 'Alerts', 3, '/childDashboard'),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavigationBarItem(
      IconData icon, String label, int index, String route) {
    final isSelected = _selectedIndex == index;
    final backgroundColor =
        isSelected ? Color.fromRGBO(63, 119, 182, 1) : Colors.transparent;
    final borderRadius = BorderRadius.circular(30);
    final textColor =
        isSelected ? Colors.white : Color.fromRGBO(63, 119, 182, 1);

    return Expanded(
      child: InkWell(
        onTap: () {
          _onItemTapped(index);
          Navigator.pushNamed(context, route);
        },
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: backgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: textColor,
                ),
                SizedBox(height: 5),
                Text(
                  label,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
