import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsFour0FourAgency() async {
  var rawFour0FourAgency = await Network(four0FourAgencyURL).getData();

  // If there are problems with the company website, return this
  if (rawFour0FourAgency == 'Problems fetching jobs') {
    return {
      'company': four0FourAgency,
      'jobs': ['Problems fetching jobs from $four0FourAgency'],
    };
  }

  var parsedFour0FourAgency = parse(rawFour0FourAgency);

  List parsedJobs = parsedFour0FourAgency.getElementsByClassName('gray-line');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': four0FourAgency,
    'jobs': jobs,
  };

  return finalJobs;
}
