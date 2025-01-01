import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/routing/app_route_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "-- Home --",
              style: TextStyle(color: Color.fromARGB(255, 80, 7, 2)),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                // GoRouter.of(context).push('/profile');
                GoRouter.of(context).go(MyRouteConstant.profile);
              },
              color: Colors.black,
              child: const Text(
                "to profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                //  GoRouter.of(context).go(MyRouteConstant.profile);
                //  GoRouter.of(context).go(MyRouteConstant.about);
              },
              color: Colors.black,
              child: const Text(
                "to about",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                //  GoRouter.of(context).go(MyRouteConstant.contact);
              },
              color: Colors.black,
              child: const Text(
                "to contact",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
