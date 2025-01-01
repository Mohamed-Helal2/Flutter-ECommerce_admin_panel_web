import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/core/widget/add_button_widget.dart';
import 'package:vendor/core/widget/drown_down_widget.dart';
import 'package:vendor/feature/products/presentation/cubit/product_cubit.dart';
import 'package:vendor/feature/products/presentation/widget/add_product/add_image_widget.dart';
import 'package:vendor/feature/products/presentation/widget/add_product/name_add_widget.dart';
import 'package:vendor/core/widget/text_fied_add_product.dart';
import 'package:vendor/core/widget/titile_text.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.maincolor,
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(name: 'Add Product'),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: ColorsManager.tableproducts,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    name_add_widget(name: 'Product Name'),
                    SizedBox(height: 10),
                    add_text_field(
                        hint: 'Enter ProductName', contentpadding: 15),
                    //
                    SizedBox(height: 10),
                    name_add_widget(name: 'Description'),
                    SizedBox(height: 10),
                    add_text_field(
                        hint: 'Enter Description', contentpadding: 25),
                    SizedBox(height: 10),
                    //
                    name_add_widget(name: 'Quantity'),
                    SizedBox(height: 10),
                    add_text_field(hint: 'Enter Quantity', contentpadding: 15),
                    SizedBox(height: 10),
                    //
                    name_add_widget(name: 'Price'),
                    SizedBox(height: 10),
                    add_text_field(hint: 'Enter Price', contentpadding: 15),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const name_add_widget(name: 'Category'),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: ColorsManager.tableproducts,
                    borderRadius: BorderRadius.circular(10)),
                child: const DropdownMenuExample(
                  backgroundColor: ColorsManager.tableproducts,
                ),
              ),
              const SizedBox(height: 10),
              const name_add_widget(name: 'Images'),
              const SizedBox(height: 10),
              const AddImageWidget(),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 180,
                  height: 30,
                  child: AddButtonWidget(
                    name: 'Add New Product',
                    onPressed: () {
                      context.read<ProductCubit>().test();
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
