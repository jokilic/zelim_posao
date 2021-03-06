import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsInfinum() async {
  var rawInfinum = await Network(infinumURL).getData();

  // If there are problems with the company website, return this
  if (rawInfinum == 'Problems fetching jobs') {
    return {
      'company': infinum,
      'jobs': ['Problems fetching jobs from $infinum'],
    };
  }

  var parsedInfinum = parse(rawInfinum);

  List parsedJobs =
      parsedInfinum.getElementsByClassName('job-list-item__title');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': infinum,
    'jobs': jobs,
  };

  return finalJobs;
}
