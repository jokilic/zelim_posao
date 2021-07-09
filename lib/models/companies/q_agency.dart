import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsQAgency() async {
  var rawQAgency = await Network(qAgencyURL).getData();

  // If there are problems with the company website, return this
  if (rawQAgency == 'Problems fetching jobs') {
    return {
      'company': qAgency,
      'jobs': ['Problems fetching jobs from $qAgency'],
    };
  }

  var parsedQAgency = parse(rawQAgency);

  List parsedJobs = parsedQAgency.getElementsByClassName('c-openPosition__info_position');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': qAgency,
    'jobs': jobs,
  };

  return finalJobs;
}
