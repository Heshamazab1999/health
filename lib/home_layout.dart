import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(
          body: cubit.Screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.teal,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeNavBar(index);
            },
            items: cubit.BottomItems,
          ),
        );
      },
      // ),
    );
  }
}
