import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vendor/core/themes/color_manager.dart';
import 'package:vendor/feature/landing/presentation/cubit/landing_cubit.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: ColorsManager.appbarcolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                context.read<LandingCubit>().toggledrawer();
              },
              icon: const Icon(
                Icons.list_rounded,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sunny,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
