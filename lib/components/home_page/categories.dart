import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../screens/home_page.dart';

// Categories with various companies that are shown below the Search Bar
class Categories extends StatelessWidget {
  final Function? itemBuilder;

  Categories({this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: itemBuilder as Widget Function(BuildContext, int),
        ),
      ),
    );
  }
}

Widget buildCategory(int index, Function onTap) {
  return GestureDetector(
    onTap: onTap as void Function()?,
    child: Container(
      margin: EdgeInsets.only(top: 6.0),
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: TextStyle(
              color: selectedCategory == index
                  ? textColor
                  : textColor.withOpacity(0.5),
              fontSize: 16.0,
              fontWeight: selectedCategory == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.0),
            height: 2.0,
            width: 30.0,
            color: selectedCategory == index ? textColor : Colors.transparent,
          ),
        ],
      ),
    ),
  );
}
