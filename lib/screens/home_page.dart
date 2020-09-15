import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/get_jobs.dart';
import '../models/search_jobs.dart';
import '../components/background_image.dart';
import '../components/loading_screen.dart';
import '../components/info_button.dart';
import '../components/hero_section.dart';
import '../components/search_jobs.dart';
// import '../components/categories.dart';
import '../components/center_screen_widget.dart';
import '../components/category_results.dart';
import '../components/search_results.dart';

int selectedCategory;
TextEditingController textEditingController = TextEditingController();

// Shows the state of the app to make it easier to show proper data on screen
enum AppState {
  started,
  negativeSearch,
  positiveSearch,
  categoryScreen,
}

// Makes it easier to know when the app has finished fetching the data
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

    // Because 'getJobs()' is async, I had to put it in 'didChangeDependencies()' instead of 'initState()'
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
                // Show loading screen when the jobs are getting fetched
                : LoadingScreen(),
          ),
        ),
      ),
    );
  }

  // Main screen that is shown when the app is loaded
  Widget buildScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          InfoButton(),
          HeroSection(),
          SearchJobs(
            // Gets called when the user searches for a job
            onSubmitted: (jobQuery) {
              setState(() {
                selectedCategory = null;
                searchJobs(jobQuery);
                // If the search finds a job, set AppState.positiveSearch
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
              // Create categories with company names
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index),
              ),
            ),
          ),

          // App has just started, show starting screen
          if (appState == AppState.started)
            CenterScreenWidget(
              text: findJobString,
              image: findJobImage,
            ),
          // Search query got no results, show 'No jobs found' screen
          if (appState == AppState.negativeSearch)
            CenterScreenWidget(
              text: noJobsString,
              image: noJobsImage,
            ),
          // Search query got some results, show the jobs
          if (appState == AppState.positiveSearch)
            SearchResults(allFilteredJobs),
          // User pressed on a category, show jobs from desired company
          if (selectedCategory != null) buildCategoryResults(),
        ],
      ),
    );
  }

  // Show jobs from desired company
  Widget buildCategoryResults() {
    textEditingController.clear();
    allFilteredJobs.clear();
    setState(() {
      appState = AppState.categoryScreen;
    });

    return CategoryResults(allJobs[selectedCategory]);
  }

  // Create a category with company name
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
