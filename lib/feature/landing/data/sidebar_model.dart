import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';

class SideBarModel {
  final String title;
  final String image;
  final VoidCallback press;

  SideBarModel({
    required this.title,
    required this.image,
    required this.press,
  });
}

// Function to generate sidebar items
List<SideBarModel> generateSidebarItems(BuildContext context) {
  return [
    SideBarModel(
      title: 'Dashboard',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.home);
      },
    ),
    SideBarModel(
      title: 'product',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.products);
      },
    ),
    SideBarModel(
      title: 'Categories',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.categories);
      },
    ),
    SideBarModel(
      title: 'Cart',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.cart);
      },
    ),
     SideBarModel(
      title: 'Orders',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.orders);
      },
    ),
    SideBarModel(
      title: 'Profile',
      image: 'assets/sidebarImages/cart.svg',
      press: () {
        context.go(MyRouteConstant.profile);
      },
    ),
  ];
}
