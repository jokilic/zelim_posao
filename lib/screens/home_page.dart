import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants.dart';
import '../models/get_jobs.dart';
import '../models/search_jobs.dart';
import '../components/background_image.dart';
import '../components/info_button.dart';
import '../components/hero_section.dart';
import '../components/search_jobs.dart';
// import '../components/categories.dart';
import '../components/center_screen_widget.dart';
import '../components/category_results.dart';
import '../components/search_results.dart';

int selectedCategory;
TextEditingController textEditingController = TextEditingController();

enum AppState {
  started,
  negativeSearch,
  positiveSearch,
  categoryScreen,
}

enum GettingJobs {
  no,
  yes,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GettingJobs gettingJobs = GettingJobs.yes;
  AppState appState = AppState.started;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    await getJobs();
    setState(() {
      gettingJobs = GettingJobs.no;
    });
  }

  @override
  void dispose() {
    super.dispose();

    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundImage(
        child: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            child: gettingJobs == GettingJobs.no
                ? buildScreen()
                : Center(
                    child: SpinKitWanderingCubes(
                      color: textColor,
                      size: 50.0,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoButton(),
          HeroSection(),
          SearchJobs(
            onSubmitted: (jobQuery) {
              setState(() {
                selectedCategory = null;

                searchJobs(jobQuery);

                (allFilteredJobs.isNotEmpty)
                    ? appState = AppState.positiveSearch
                    : appState = AppState.negativeSearch;
              });
            },
            textEditingController: textEditingController,
          ),
          // Categories(),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index),
              ),
            ),
          ),

          if (appState == AppState.started)
            CenterScreenWidget(
              text: findJobString,
              image: findJobImage,
            ),
          if (appState == AppState.negativeSearch)
            CenterScreenWidget(
              text: noJobsString,
              image: noJobsImage,
            ),

          if (appState == AppState.positiveSearch)
            SearchResults(allFilteredJobs),
          if (selectedCategory != null) buildCategoryResults(),
        ],
      ),
    );
  }

  Widget buildCategoryResults() {
    textEditingController.clear();
    allFilteredJobs.clear();
    setState(() {
      appState = AppState.categoryScreen;
    });

    return CategoryResults(allJobs[selectedCategory]);
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = index;
        });
      },
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
}
