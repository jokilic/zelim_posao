import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsMicroblink() async {
  var rawMicroblink = await Network(microblinkURL).getData();

  // If there are problems with the company website, return this
  if (rawMicroblink == 'Problems fetching jobs') {
    return {
      'company': microblink,
      'jobs': ['Problems fetching jobs from $microblink'],
    };
  }

  var parsedMicroblink = parse(rawMicroblink);

  List parsedJobs = parsedMicroblink.getElementsByClassName('talentlyft-job-post standard bg-blue');

  List<String> jobs = [];
  parsedJobs.forEach((job) {
    parsedJobs = job.getElementsByClassName('title');
    jobs.add(parsedJobs[0].text.trim());
  });

  Map finalJobs = {
    'company': microblink,
    'jobs': jobs,
  };

  return finalJobs;
}
