import 'package:flutter/material.dart';
import 'package:vendor/core/themes/color_manager.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({super.key});
  final List<String> imagepath = [
    'assets/product/1.jpg',
    'assets/product/2.jpg',
    'assets/product/3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorsManager.tableproducts,
        border: Border.all(color: Colors.white, width: 0.2),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/product/1.jpg'),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100, // Define a fixed height for the GridView
            child: GridView.builder(
              itemCount: imagepath.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagepath[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
