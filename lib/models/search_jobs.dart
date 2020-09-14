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

List searchJobs(String jobQuery) {
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

  // Collect all of the jobs and put them in one big List
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
    filteredJobsUndabot
  ];

  allFilteredJobs.removeWhere((element) => element['jobs'].isEmpty);

  return allFilteredJobs;
}

Map filterJobs({
  String jobQuery,
  String company,
  Map jobList,
}) {
  List<String> filteredList = jobList['jobs'];
  Map filteredJobs;

  filteredList = filteredList
      .where((job) => job.toLowerCase().contains(jobQuery.toLowerCase()))
      .toList();

  filteredJobs = {
    'company': company,
    'jobs': filteredList,
  };

  return filteredJobs;
}
