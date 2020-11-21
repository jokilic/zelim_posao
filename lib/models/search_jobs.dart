import './get_jobs.dart';
import '../constants.dart';

Map filteredJobsFour0FourAgency = {};
Map filteredJobsArsFutura = {};
Map filteredJobsBornfight = {};
Map filteredJobsCinnamon = {};
Map filteredJobsDecode = {};
Map filteredJobsDegordian = {};
Map filteredJobsFive = {};
Map filteredJobsInfinum = {};
Map filteredJobsMartian = {};
Map filteredJobsMicroblink = {};
Map filteredJobsQAgency = {};
Map filteredJobsSpeck = {};
Map filteredJobsTrikoder = {};
Map filteredJobsUhpDigital = {};
Map filteredJobsUndabot = {};

List allFilteredJobs = [];

// Called when the user searches for a job
List searchJobs(String jobQuery) {
  // Create filtered Maps for every company
  filteredJobsFour0FourAgency = filterJobs(
    company: four0FourAgency,
    jobList: jobsFour0FourAgency!,
    jobQuery: jobQuery,
  );

  filteredJobsArsFutura = filterJobs(
    company: arsFutura,
    jobList: jobsArsFutura!,
    jobQuery: jobQuery,
  );

  filteredJobsBornfight = filterJobs(
    company: bornfight,
    jobList: jobsBornfight!,
    jobQuery: jobQuery,
  );

  filteredJobsCinnamon = filterJobs(
    company: cinnamon,
    jobList: jobsCinnamon!,
    jobQuery: jobQuery,
  );

  filteredJobsDecode = filterJobs(
    company: decode,
    jobList: jobsDecode!,
    jobQuery: jobQuery,
  );

  filteredJobsDegordian = filterJobs(
    company: degordian,
    jobList: jobsDegordian!,
    jobQuery: jobQuery,
  );

  filteredJobsFive = filterJobs(
    company: five,
    jobList: jobsFive!,
    jobQuery: jobQuery,
  );

  filteredJobsInfinum = filterJobs(
    company: infinum,
    jobList: jobsInfinum!,
    jobQuery: jobQuery,
  );

  filteredJobsMartian = filterJobs(
    company: martian,
    jobList: jobsMartian!,
    jobQuery: jobQuery,
  );

  filteredJobsMicroblink = filterJobs(
    company: microblink,
    jobList: jobsMicroblink!,
    jobQuery: jobQuery,
  );

  filteredJobsQAgency = filterJobs(
    company: qAgency,
    jobList: jobsQAgency!,
    jobQuery: jobQuery,
  );

  filteredJobsSpeck = filterJobs(
    company: speck,
    jobList: jobsSpeck!,
    jobQuery: jobQuery,
  );

  filteredJobsTrikoder = filterJobs(
    company: trikoder,
    jobList: jobsTrikoder!,
    jobQuery: jobQuery,
  );

  filteredJobsUhpDigital = filterJobs(
    company: uhpDigital,
    jobList: jobsUhpDigital!,
    jobQuery: jobQuery,
  );

  filteredJobsUndabot = filterJobs(
    company: undabot,
    jobList: jobsUndabot!,
    jobQuery: jobQuery,
  );

  // Collect all of the filtered jobs and put them in one big List
  allFilteredJobs = [
    filteredJobsFour0FourAgency,
    filteredJobsArsFutura,
    filteredJobsBornfight,
    filteredJobsCinnamon,
    filteredJobsDecode,
    filteredJobsDegordian,
    filteredJobsFive,
    filteredJobsInfinum,
    filteredJobsMartian,
    filteredJobsMicroblink,
    filteredJobsQAgency,
    filteredJobsSpeck,
    filteredJobsTrikoder,
    filteredJobsUhpDigital,
    filteredJobsUndabot,
  ];

  // Remove companies where the query doesn't match any job
  allFilteredJobs.removeWhere((element) => element['jobs'].isEmpty);

// Returns a big List of Maps with companies and jobs that fit the search query
  return allFilteredJobs;
}

// Function that compares every job with the query
Map filterJobs({
  String? jobQuery,
  String? company,
  required Map jobList,
}) {
  List<String> filteredList = jobList['jobs'];
  Map filteredJobs;

  // Add every job that matches the query
  filteredList = filteredList
      .where((job) => job.toLowerCase().contains(jobQuery!.toLowerCase()))
      .toList();

  // Create a Map of filtered jobs
  filteredJobs = {
    'company': company,
    'jobs': filteredList,
  };

  return filteredJobs;
}
