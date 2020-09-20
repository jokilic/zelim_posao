import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/get_jobs.dart';
import '../models/search_jobs.dart';
import '../screens/info_screen.dart';
import '../components/background_image.dart';
import '../components/home_page/loading_screen.dart';
import '../components/header_button.dart';
import '../components/hero_section.dart';
import '../components/home_page/search_jobs.dart';
import '../components/home_page/categories.dart';
import '../components/home_page/center_screen_widget.dart';
import '../components/home_page/category_results.dart';
import '../components/home_page/search_results.dart';

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
  static const routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GettingJobs gettingJobs = GettingJobs.yes;
  AppState appState = AppState.started;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    // Because 'getJobs()' is an asynchronous function, I had to put it in 'didChangeDependencies()' instead of 'initState()'
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
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          HeaderButton(
            alignment: Alignment.centerRight,
            icon: Icon(
              Icons.info_outline,
              color: textColor,
              size: 32.0,
            ),
            onTap: () => Navigator.pushNamed(
              context,
              InfoScreen.routeName,
            ),
          ),
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
          Categories(
              itemBuilder: (context, index) => buildCategory(index, () {
                    setState(() {
                      selectedCategory = index;
                    });
                  })),

          // Search query got some results, show the jobs
          if (appState == AppState.positiveSearch)
            SearchResults(allFilteredJobs),

          // User pressed on a category, show jobs from desired company
          if (selectedCategory != null) buildCategoryResults(),

          // Search query got no results, show 'No jobs found' screen
          if (appState == AppState.negativeSearch)
            CenterScreenWidget(
              text: noJobsString,
              image: noJobsImage,
            ),

          // App has just started, show starting screen
          if (appState == AppState.started)
            CenterScreenWidget(
              text: findJobString,
              image: findJobImage,
            ),
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
}
