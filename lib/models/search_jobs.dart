import './get_jobs.dart';
import '../constants.dart';

Map filteredJobsArsFutura = {};
Map filteredJobsBornfight = {};
Map filteredJobsCinnamon = {};
Map filteredJobsDegordian = {};
Map filteredJobsFive = {};
Map filteredJobsInfinum = {};
Map filteredJobsMartian = {};
Map filteredJobsMicroblink = {};
Map filteredJobsQAgency = {};
Map filteredJobsUhpDigital = {};
Map filteredJobsUndabot = {};

List allFilteredJobs = [];

// Called when the user searches for a job
List searchJobs(String jobQuery) {
  // Create filtered Maps for every company
  filteredJobsArsFutura = filterJobs(
    company: arsFutura,
    jobList: jobsArsFutura,
    jobQuery: jobQuery,
  );

  filteredJobsBornfight = filterJobs(
    company: bornfight,
    jobList: jobsBornfight,
    jobQuery: jobQuery,
  );

  filteredJobsCinnamon = filterJobs(
    company: cinnamon,
    jobList: jobsCinnamon,
    jobQuery: jobQuery,
  );

  filteredJobsDegordian = filterJobs(
    company: degordian,
    jobList: jobsDegordian,
    jobQuery: jobQuery,
  );

  filteredJobsFive = filterJobs(
    company: five,
    jobList: jobsFive,
    jobQuery: jobQuery,
  );

  filteredJobsInfinum = filterJobs(
    company: infinum,
    jobList: jobsInfinum,
    jobQuery: jobQuery,
  );

  filteredJobsMartian = filterJobs(
    company: martian,
    jobList: jobsMartian,
    jobQuery: jobQuery,
  );

  filteredJobsMicroblink = filterJobs(
    company: microblink,
    jobList: jobsMicroblink,
    jobQuery: jobQuery,
  );

  filteredJobsQAgency = filterJobs(
    company: qAgency,
    jobList: jobsQAgency,
    jobQuery: jobQuery,
  );

  filteredJobsUhpDigital = filterJobs(
    company: uhpDigital,
    jobList: jobsUhpDigital,
    jobQuery: jobQuery,
  );

  filteredJobsUndabot = filterJobs(
    company: undabot,
    jobList: jobsUndabot,
    jobQuery: jobQuery,
  );

  // Collect all of the filtered jobs and put them in one big List
  allFilteredJobs = [
    filteredJobsArsFutura,
    filteredJobsBornfight,
    filteredJobsCinnamon,
    filteredJobsDegordian,
    filteredJobsFive,
    filteredJobsInfinum,
    filteredJobsMartian,
    filteredJobsMicroblink,
    filteredJobsQAgency,
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
  String jobQuery,
  String company,
  Map jobList,
}) {
  List<String> filteredList = jobList['jobs'];
  Map filteredJobs;

  // Add every job that matches the query
  filteredList = filteredList
      .where((job) => job.toLowerCase().contains(jobQuery.toLowerCase()))
      .toList();

  // Create a Map of filtered jobs
  filteredJobs = {
    'company': company,
    'jobs': filteredList,
  };

  return filteredJobs;
}
