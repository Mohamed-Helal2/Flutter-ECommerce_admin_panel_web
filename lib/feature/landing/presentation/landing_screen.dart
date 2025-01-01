import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/landing/presentation/cubit/landing_cubit.dart';
import 'package:vendor/feature/landing/presentation/widget/header_widget.dart';
import 'package:vendor/feature/landing/presentation/widget/sidebar_widget.dart';

class LandingScreen extends StatelessWidget {
  final Widget child;
  const LandingScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final currentRoute = GoRouter.of(context).state!.uri.path;

    return Scaffold(
      backgroundColor: ColorsManager.maincolor,
      body: BlocBuilder<LandingCubit, LandingState>(
        builder: (context, state) {
          return Row(
            children: [
              if (context.read<LandingCubit>().draweropen)
                SideBar(currentRoute: currentRoute),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const HeaderWidget(),
                    Expanded(child: child),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
