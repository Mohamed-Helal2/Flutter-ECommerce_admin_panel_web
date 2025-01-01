import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/products/presentation/cubit/product_cubit.dart';
import 'package:vendor/feature/products/presentation/widget/product/category_widget.dart';
import 'package:vendor/feature/products/presentation/widget/product/search_widget.dart';

import '../../../../core/widget/app_bar_widget.dart';
import '../widget/product/table_of_product_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorsManager.maincolor,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AppBarWidget(
                    pagename: 'Products',
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ColorsManager.tableproducts,
                      border: Border.all(color: Colors.white, width: 0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Column(
                      children: [
                        SearchWidget(),
                        SizedBox(height: 25),
                        CategoryWidget(),
                        SizedBox(height: 25),
                        TableOfProductWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
