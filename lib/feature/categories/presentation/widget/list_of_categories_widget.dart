import 'package:flutter/material.dart';
import 'package:vendor/feature/categories/data/category_model/category_model.dart';

class ListOfCategoriesWidget extends StatelessWidget {
  ListOfCategoriesWidget({super.key});

  // Define a list of categories (dummy data for example purposes)
  final List<CategoryModel> categories = [
    CategoryModel(
        id: 1,
        name: 'Electronics',
        description: 'Category for electronic products'),
    CategoryModel(
        id: 2, name: 'Fashion', description: 'Category for fashion items'),
    CategoryModel(
        id: 3,
        name: 'Home Appliances',
        description: 'Category for home appliances'),
    CategoryModel(id: 4, name: 'Books', description: 'Category for books'),
    CategoryModel(id: 5, name: 'Toys', description: 'Category for toys'),
    CategoryModel(
        id: 6, name: 'Sports', description: 'Category for sports items'),
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  // Handle category tap, e.g., navigate to category details screen
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.category,
                        size: 40,
                        color: Colors
                            .blue), // You can replace this with an image or other widget
                    const SizedBox(height: 3),
                    Text(
                      category.name ?? 'No Name',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
