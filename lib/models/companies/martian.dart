import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsMartian() async {
  var rawMartian = await Network(martianURL).getData();

  // If there are problems with the company website, return this
  if (rawMartian == 'Problems fetching jobs') {
    return {
      'company': martian,
      'jobs': ['Problems fetching jobs from $martian'],
    };
  }

  var parsedMartian = parse(rawMartian);

  var jobsSection = parsedMartian.getElementsByClassName('Section-module--wrapper--2M1n4')[3];
  List parsedJobs = jobsSection.getElementsByTagName('h2');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': martian,
    'jobs': jobs,
  };

  return finalJobs;
}
