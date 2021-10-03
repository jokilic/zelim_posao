import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsDecode() async {
  var rawDecode = await Network(decodeURL).getData();

  // If there are problems with the company website, return this
  if (rawDecode == 'Problems fetching jobs') {
    return {
      'company': decode,
      'jobs': ['Problems fetching jobs from $decode'],
    };
  }

  var parsedDecode = parse(rawDecode);

  List parsedJobs = parsedDecode.getElementsByTagName('a');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': decode,
    'jobs': jobs,
  };

  return finalJobs;
}
