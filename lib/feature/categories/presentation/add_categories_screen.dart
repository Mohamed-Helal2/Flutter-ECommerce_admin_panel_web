import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/add_button_widget.dart';
import 'package:vendor/core/widget/text_fied_add_product.dart';
import 'package:vendor/core/widget/titile_text.dart';
import 'package:vendor/feature/products/presentation/widget/add_product/add_image_widget.dart';
import 'package:vendor/feature/products/presentation/widget/add_product/name_add_widget.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: ColorsManager.tableproducts,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(name: 'Add Categories'),
              const SizedBox(height: 10),
              const name_add_widget(name: 'Category Name'),
              const SizedBox(height: 10),
              const add_text_field(
                  hint: 'Enter Category Name', contentpadding: 25),
              const SizedBox(height: 40),
              const AddImageWidget(),
              const SizedBox(height: 10),
              Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 180,
                    height: 30,
                    child: AddButtonWidget(
                      name: 'Add New Category',
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
