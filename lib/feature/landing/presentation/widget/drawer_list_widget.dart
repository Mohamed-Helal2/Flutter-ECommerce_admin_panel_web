import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/landing/data/sidebar_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected; // Expect a function that takes an int

  const DrawerListWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final sidebarItems = generateSidebarItems(context);

    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: sidebarItems.length,
        itemBuilder: (context, index) {
          final item = sidebarItems[index];
          final isSelected = index == selectedIndex;

          return ListTile(
            hoverColor: Colors.green.withOpacity(0.1),
            onTap: () {
              onItemSelected(index);
              item.press();
            },
            leading: SvgPicture.asset(
              item.image,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Colors.red, BlendMode.srcIn)
                  : null,
              width: 40,
              height: 35,
            ),
            title: Text(
              item.title,
              style: TextStyle(
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.6),
                fontSize: isSelected ? 15 : 15,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.normal,
              ),
            ),
            tileColor: isSelected ? ColorsManager.drawerselected : null,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 15,
        ),
      ),
    );
  }
}
