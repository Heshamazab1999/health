import 'package:flutter/material.dart';
import 'package:health/media_query_values.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> CategoryList = [
      CategoryModel(
          image: "assets/images/catogery1.jpg", title: "Check Disease ", id: 1),
      CategoryModel(
          image: "assets/images/catogery2.jpg", title: "Your Opinion", id: 2),
    ];
    List<SpecialModel> SpecialList = [
      SpecialModel(
          image: "assets/images/children health.png",
          title: "Children's health"),
      SpecialModel(image: "assets/images/bmi.jpg", title: "bmi "),
      SpecialModel(
          image: "assets/images/Food systems.jpg", title: "Food systems  "),
      SpecialModel(image: "assets/images/Calories.jpg", title: "Calories "),
      SpecialModel(image: "assets/images/exercises.jpg", title: "exercises  "),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Good Morning',
          style: TextStyle(color: Colors.grey),
        ),
        actions: const [
          Icon(Icons.notifications_active_sharp),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Vision ',
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
              SizedBox(
                height: context.height * .03,
              ),
              const Text(
                'Health Club ',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              SizedBox(
                height: context.height * .03,
              ),
              const SearchBar(),
              // SizedBox(
              //   height: context.height * .03,
              // ),
              Text(
                'We Care for you ',
                style: TextStyle(color: Colors.blue.shade900, fontSize: 25),
              ),
              SizedBox(
                height: context.height * .03,
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        CategoryCard(CategoryList[index], context),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: CategoryList.length),
              ),
              SizedBox(
                height: context.height * .03,
              ),
              Text(
                'Specialists ',
                style: TextStyle(color: Colors.blue.shade900, fontSize: 25),
              ),
              SizedBox(
                height: context.height * .025,
              ),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        SpecialCard(SpecialList[index], index, context),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: SpecialList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SpecialCard(SpecialModel model, int index, BuildContext context) => Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: context.height * .22,
            width: context.width * .33,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Image(
                image: AssetImage(model.image),
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Card(
          //   child: Image(
          //     image: AssetImage(model.image),
          //     width: 100,
          //     height: 100,
          //   ),
          // ),
          Container(
            width: context.width * .33,
            color: Colors.white.withOpacity(.6),
            height: 30,
            child: Text(
              model.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue.shade900,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      );
}

Widget CategoryCard(CategoryModel model, context) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:
            model.id == 1 ? const Color(0xffA79CD9) : const Color(0xffFFF7ED)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 20,
        ),
        Image(
          image: AssetImage(model.image),
          width: 120,
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                model.title,
                style: TextStyle(
                    color: Colors.blue.shade900, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue.shade900)
            ],
          ),
        )
      ],
    ),
  );
}
// Widget CategoryCard(CategoryModel model, context) {
//   return Container(
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: const Color(0xffA79CD9)),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         const SizedBox(
//           width: 20,
//         ),
//         SizedBox(
//           width: 140,
//           height: 140,
//           child: Image(
//             image: AssetImage(model.image),
//           ),
//         ),
//         const Spacer(),
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Row(
//             children: [
//               Text(
//                 model.title,
//                 style: TextStyle(
//                     color: Colors.blue.shade900, fontWeight: FontWeight.bold),
//               ),
//               Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue.shade900)
//             ],
//           ),
//         )
//       ],
//     ),
//   );
// }

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    // required Future ScanWidget,
    // required this.ScanWidget,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  // final Future ScanWidget;

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 1,
      height: context.height * 0.07,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: context.height * .07,
              child: TextField(
                style: TextStyle(
                  fontSize: context.height * 0.015,
                ),
                decoration: InputDecoration(
                  hintText: 'Search Doctor',
                  hintStyle: TextStyle(
                    color: const Color(0xFF949098),
                    fontSize: context.height * 0.018,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  // prefixIcon: Icon(
                  //   Icons.search,
                  //   size: context.height * 0.03,
                  //   color: const Color(0xFF949098),
                  // ),
                  suffixIcon: CircleAvatar(
                    // radius: .2,
                    maxRadius: 1,
                    minRadius: .5,
                    backgroundColor: Colors.blue.shade900,
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryModel {
  final String image;
  final String title;
  final int id;

//   PageViewModel(this.image, this.title, );
  CategoryModel({
    required this.image,
    required this.title,
    required this.id,
  });
}

class SpecialModel {
  final String image;
  final String title;

//   PageViewModel(this.image, this.title, );
  SpecialModel({
    required this.image,
    required this.title,
  });
}
