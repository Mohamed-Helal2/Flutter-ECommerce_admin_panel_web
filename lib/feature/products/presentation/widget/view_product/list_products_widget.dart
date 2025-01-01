import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/products/data/model/product_model.dart';

class ListProductsWidget extends StatelessWidget {
  ListProductsWidget({super.key});

  final List<ProductModel> products = [
    ProductModel(
      name: "Product 1",
      price: 10.0,
      description: "Description of Product 1",
    ),
    ProductModel(
      name: "Product 2",
      price: 15.5,
      description: "Description of Product 2",
    ),
    ProductModel(
      name: "Product 3",
      price: 20.0,
      description: "Description of Product 3",
    ),
    ProductModel(
      name: "Product 1",
      price: 10.0,
      description: "Description of Product 1",
    ),
    ProductModel(
      name: "Product 2",
      price: 15.5,
      description: "Description of Product 2",
    ),
    ProductModel(
      name: "Product 3",
      price: 20.0,
      description: "Description of Product 3",
    ),
  ];

  final List<String> imagepath = [
    'assets/product/1.jpg',
    'assets/product/2.jpg',
    'assets/product/3.jpg',
    'assets/product/4.jpg',
    'assets/product/5.jpg',
    'assets/product/6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsManager.tableproducts,
              border: Border.all(color: Colors.white, width: 0.2),
              borderRadius: BorderRadius.circular(7),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagepath[index],
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.name!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 5),
                    Text(
                      '4.5', // Static rating value
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${product.price}', // Assuming `price` is a double/int
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  overflow: TextOverflow.ellipsis, // Prevent text overflow
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
