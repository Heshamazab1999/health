// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:health/cubit/states.dart';

// import '../PersonScreen.dart';
// import '../SearchScreen.dart';
// import '../home_screen.dart';

// class AppCubit extends Cubit<AppStates> {
//   AppCubit() : super(initialState());

//   static AppCubit get(context) => BlocProvider.of(context);
//   int currentIndex = 0;
//   List<BottomNavigationBarItem> BottomItems = [
//      BottomNavigationBarItem(
//         icon: Container(   height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(15)),
//           color: currentIndex==0 ? Colors.white : null,
//           border: Border.all(
//             color:currentIndex==0 ? Colors.blue : Colors.transparent,
//             width: 2.0,
//           ),
//         ),

//           child: Icon(
//             Icons.home,
//           ),
//         ),
//         label: 'Home'),
//     const BottomNavigationBarItem(
//         icon: Icon(
//           Icons.search,
//         ),
//         label: 'Search'),
//     const BottomNavigationBarItem(
//         icon: Icon(
//           Icons.person,
//         ),
//         label: 'Person'),
//   ];

//   void changeNavBar(index) {
//     currentIndex = index;

//     emit(ChangeBottonNavBar());
//   }

//   List<Widget> Screens = [
//     const HomeScreen(),
//     const SearchScreen(),
//     const PersonScreen(),
//   ];
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health/cubit/states.dart';

import '../PersonScreen.dart';
import '../SearchScreen.dart';
import '../home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  late List<BottomNavigationBarItem> BottomItems;
  late List<Widget> Screens;
  int currentIndex = 0;
  void changeNavBar(index) {
    currentIndex = index;

    emit(ChangeBottonNavBar());
  }

  AppCubit() : super(initialState()) {
    BottomItems = [
      BottomNavigationBarItem(
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: currentIndex == 0 ? Colors.white : null,
            border: Border.all(
              color: currentIndex == 0 ? Colors.blue : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: const Icon(
            Icons.home,
          ),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: currentIndex == 0 ? Colors.white : null,
            border: Border.all(
              color: currentIndex == 0 ? Colors.deepPurple : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: const Icon(
            Icons.search,
          ),
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: currentIndex == 0 ? Colors.white : null,
            border: Border.all(
              color: currentIndex == 0 ? Colors.deepOrange : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: const Icon(
            Icons.person,
          ),
        ),
        label: 'Person',
      ),
    ];
    Screens = [
      const HomeScreen(),
      const SearchScreen(),
      const PersonScreen(),
    ];
  }

  static AppCubit get(context) => BlocProvider.of(context);
}
