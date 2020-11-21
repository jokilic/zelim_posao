import 'package:flutter/material.dart';

import '../../constants.dart';

// Search Bar that makes it possible to search for desired jobs
class SearchJobs extends StatelessWidget {
  final Function? onSubmitted;
  final TextEditingController? textEditingController;

  SearchJobs({this.onSubmitted, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 50.0),
      width: size.width * 0.8,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: textColor,
          width: 2,
        ),
      ),
      child: TextField(
        onSubmitted: onSubmitted as void Function(String)?,
        controller: textEditingController,
        style: searchStyle(),
        decoration: inputDecoration(),
      ),
    );
  }
}

TextStyle searchStyle() {
  return TextStyle(
    fontSize: 18.0,
    color: textColor,
    fontFamily: rubikFont,
  );
}

InputDecoration inputDecoration() {
  return InputDecoration(
    hintText: searchJobsString,
    hintStyle: searchStyle(),
    suffixIcon: Icon(
      Icons.search,
      color: textColor,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
  );
}
