import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsFive() async {
  var rawFive = await Network(fiveURL).getData();

  // If there are problems with the company website, return this
  if (rawFive == 'Problems fetching jobs') {
    return {
      'company': five,
      'jobs': ['Problems fetching jobs from $five'],
    };
  }

  var parsedFive = parse(rawFive);

  var parsedJobs = parsedFive.getElementsByClassName('career-item__title');

  List spans;

  parsedJobs.forEach((job) {
    spans = job.getElementsByTagName('span');
    spans.forEach((span) => span.remove());
  });

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': five,
    'jobs': jobs,
  };

  return finalJobs;
}
