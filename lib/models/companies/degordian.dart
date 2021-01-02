import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsDegordian() async {
  var rawDegordian = await Network(degordianURL).getData();

  // If there are problems with the company website, return this
  if (rawDegordian == 'Problems fetching jobs') {
    return {
      'company': degordian,
      'jobs': ['Problems fetching jobs from $degordian'],
    };
  }

  var parsedDegordian = parse(rawDegordian);

  List parsedJobs = parsedDegordian.getElementsByTagName('h4');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': degordian,
    'jobs': jobs,
  };

  return finalJobs;
}
