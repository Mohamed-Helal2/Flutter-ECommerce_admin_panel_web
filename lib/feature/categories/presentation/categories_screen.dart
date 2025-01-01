import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/app_bar_widget.dart';
import 'package:vendor/feature/categories/presentation/widget/add_widget.dart';
import 'package:vendor/feature/categories/presentation/widget/list_of_categories_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppBarWidget(
              pagename: 'Categories',
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorsManager.tableproducts,
                border: Border.all(color: Colors.white, width: 0.2),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                children: [
                  const AddWidget(),
                  const SizedBox(height: 25),
                  ListOfCategoriesWidget(),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
