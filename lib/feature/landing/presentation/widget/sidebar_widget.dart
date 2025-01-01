import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/landing/presentation/widget/drawer_list_widget.dart';
import 'package:vendor/core/routing/app_route_constant.dart';

class SideBar extends StatefulWidget {
  final String currentRoute;

  const SideBar({super.key, required this.currentRoute});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _setSelectedIndex(widget.currentRoute);
  }

  void _setSelectedIndex(String route) {
    if (route == MyRouteConstant.home) {
      selectedIndex = 0;
    } else if (route.startsWith(MyRouteConstant.products)) {
      selectedIndex = 1;
    } else if (route.startsWith(MyRouteConstant.categories)) {
      selectedIndex = 2;
    } else if (route.startsWith(MyRouteConstant.cart)) {
      selectedIndex = 3;
    } else if (route.startsWith(MyRouteConstant.orders)) {
      selectedIndex = 4;
    } 
    else if (route == MyRouteConstant.profile) {
      selectedIndex = 5;
    }
  }

  bool isExpanded = false;

  void toggleDropdown() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  void didUpdateWidget(covariant SideBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentRoute != oldWidget.currentRoute) {
      _setSelectedIndex(widget.currentRoute);
    }
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Set to zero to remove border radius
      ),
      backgroundColor: ColorsManager.drawercolor,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Vendor',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            DrawerListWidget(
              selectedIndex: selectedIndex,
              onItemSelected: updateSelectedIndex, // Pass the correct type
            ),
          ],
        ),
      ),
    );
  }
}
