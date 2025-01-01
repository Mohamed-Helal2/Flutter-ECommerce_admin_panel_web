import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';
import 'package:vendor/feature/cart/presentation/cart_item_screen.dart';
import 'package:vendor/feature/categories/presentation/add_categories_screen.dart';
import 'package:vendor/feature/categories/presentation/categories_screen.dart';
import 'package:vendor/feature/home_screen.dart';
import 'package:vendor/feature/landing/presentation/cubit/landing_cubit.dart';
import 'package:vendor/feature/landing/presentation/landing_screen.dart';
import 'package:vendor/feature/cart/presentation/cart_screen.dart';
import 'package:vendor/feature/order/presentation/order_screen.dart';
import 'package:vendor/feature/products/data/model/product_model.dart';
import 'package:vendor/feature/products/presentation/cubit/product_cubit.dart';
import 'package:vendor/feature/products/presentation/screen/add_product_screen.dart';
import 'package:vendor/feature/products/presentation/screen/products_screen.dart';
import 'package:vendor/feature/products/presentation/screen/view_product_screen.dart';
import 'package:vendor/feature/profile_screen.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouter = GoRouter(
  initialLocation: MyRouteConstant.home,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BlocProvider(
          create: (context) => LandingCubit(),
          child: LandingScreen(child: child),
        );
      },
      routes: [
        GoRoute(
          path: MyRouteConstant.home,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),

        GoRoute(
          path: MyRouteConstant.profile,
          builder: (BuildContext context, GoRouterState state) =>
              const ProfileScreen(),
        ),
// catefories
        GoRoute(
            path: MyRouteConstant.categories,
            builder: (BuildContext context, GoRouterState state) =>
                const CategoriesScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (BuildContext context, GoRouterState state) {
                  return const AddCategoriesScreen();
                },
              ),
            ]),
// products
        GoRoute(
          path: MyRouteConstant.products,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
              create: (context) => ProductCubit()..test(),
              child: const ProductsScreen(),
            );
          },
          routes: [
            GoRoute(
              path: 'add',
              builder: (BuildContext context, GoRouterState state) {
                return BlocProvider.value(
                  value: ProductCubit(),
                  child: const AddProductScreen(),
                );
              },
            ),
            GoRoute(
              path: 'view',
              builder: (BuildContext context, GoRouterState state) {
                final product = state.extra as ProductModel;
                return BlocProvider.value(
                  value: ProductCubit(),
                  child: ViewProductScreen(product: product),
                );
              },
            ),
          ],
        ),
// cart
        GoRoute(
          path: MyRouteConstant.cart,
          builder: (BuildContext context, GoRouterState state) =>
              const CartScreen(),
              routes: [
                 GoRoute(
                path: 'item',
                builder: (BuildContext context, GoRouterState state) {
                  return const CartItemScreen();
                },
              ),
              ]
        ),
// orders
  GoRoute(
          path: MyRouteConstant.orders,
          builder: (BuildContext context, GoRouterState state) =>
              const OrderScreen(),
        ),
      ],
    ),
  ],
);
