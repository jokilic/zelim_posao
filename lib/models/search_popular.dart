import './get_jobs.dart';
import '../constants.dart';

Map filteredPopularJobsFour0FourAgency = {};
Map filteredPopularJobsArsFutura = {};
Map filteredPopularJobsBornfight = {};
Map filteredPopularJobsCinnamon = {};
Map filteredPopularJobsDecode = {};
Map filteredPopularJobsDegordian = {};
Map filteredPopularJobsFive = {};
Map filteredPopularJobsInfinum = {};
Map filteredPopularJobsMartian = {};
Map filteredPopularJobsMicroblink = {};
Map filteredPopularJobsQAgency = {};
Map filteredPopularJobsSpeck = {};
Map filteredPopularJobsTrikoder = {};
Map filteredPopularJobsUhpDigital = {};
Map filteredPopularJobsUndabot = {};

List allFilteredPopularJobs = [];

// Called when the user taps on a search box
List searchPopularJobs(List<String> searchQueries) {
  // Create filtered Maps for every company
  filteredPopularJobsFour0FourAgency = filterPopularJobs(
    company: four0FourAgency,
    jobList: jobsFour0FourAgency!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsArsFutura = filterPopularJobs(
    company: arsFutura,
    jobList: jobsArsFutura!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsBornfight = filterPopularJobs(
    company: bornfight,
    jobList: jobsBornfight!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsCinnamon = filterPopularJobs(
    company: cinnamon,
    jobList: jobsCinnamon!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsDecode = filterPopularJobs(
    company: decode,
    jobList: jobsDecode!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsDegordian = filterPopularJobs(
    company: degordian,
    jobList: jobsDegordian!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsFive = filterPopularJobs(
    company: five,
    jobList: jobsFive!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsInfinum = filterPopularJobs(
    company: infinum,
    jobList: jobsInfinum!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsMartian = filterPopularJobs(
    company: martian,
    jobList: jobsMartian!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsMicroblink = filterPopularJobs(
    company: microblink,
    jobList: jobsMicroblink!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsQAgency = filterPopularJobs(
    company: qAgency,
    jobList: jobsQAgency!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsSpeck = filterPopularJobs(
    company: speck,
    jobList: jobsSpeck!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsTrikoder = filterPopularJobs(
    company: trikoder,
    jobList: jobsTrikoder!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsUhpDigital = filterPopularJobs(
    company: uhpDigital,
    jobList: jobsUhpDigital!,
    searchQueries: searchQueries,
  );

  filteredPopularJobsUndabot = filterPopularJobs(
    company: undabot,
    jobList: jobsUndabot!,
    searchQueries: searchQueries,
  );

  // Collect all of the filtered jobs and put them in one big List
  allFilteredPopularJobs = [
    filteredPopularJobsFour0FourAgency,
    filteredPopularJobsArsFutura,
    filteredPopularJobsBornfight,
    filteredPopularJobsCinnamon,
    filteredPopularJobsDecode,
    filteredPopularJobsDegordian,
    filteredPopularJobsFive,
    filteredPopularJobsInfinum,
    filteredPopularJobsMartian,
    filteredPopularJobsMicroblink,
    filteredPopularJobsQAgency,
    filteredPopularJobsSpeck,
    filteredPopularJobsTrikoder,
    filteredPopularJobsUhpDigital,
    filteredPopularJobsUndabot,
  ];

  // Remove companies where the query doesn't match any job
  allFilteredPopularJobs.removeWhere((element) => element['jobs'].isEmpty);

// Returns a big List of Maps with companies and jobs that fit the search query
  return allFilteredPopularJobs;
}

// Function that filters jobs with the popular queries
Map filterPopularJobs({
  required List<String> searchQueries,
  String? company,
  required Map jobList,
}) {
  List<String>? filteredPopularList = jobList['jobs'];
  Map filteredPopularJobs;

  // This is so ugly and needs to be refactored :(
  switch (searchQueries.length) {
    case 1:
      filteredPopularList = filteredPopularList!
          .where((job) =>
              job.toLowerCase().contains(searchQueries[0].toLowerCase()))
          .toList();
      break;
    case 2:
      filteredPopularList = filteredPopularList!
          .where((job) =>
              job.toLowerCase().contains(searchQueries[0].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[1].toLowerCase()))
          .toList();
      break;
    case 3:
      filteredPopularList = filteredPopularList!
          .where((job) =>
              job.toLowerCase().contains(searchQueries[0].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[1].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[2].toLowerCase()))
          .toList();
      break;
    case 4:
      filteredPopularList = filteredPopularList!
          .where((job) =>
              job.toLowerCase().contains(searchQueries[0].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[1].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[2].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[3].toLowerCase()))
          .toList();
      break;
    case 5:
      filteredPopularList = filteredPopularList!
          .where((job) =>
              job.toLowerCase().contains(searchQueries[0].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[1].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[2].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[3].toLowerCase()) ||
              job.toLowerCase().contains(searchQueries[4].toLowerCase()))
          .toList();
      break;
  }

  // Create a Map of filtered jobs
  filteredPopularJobs = {
    'company': company,
    'jobs': filteredPopularList,
  };

  return filteredPopularJobs;
}
