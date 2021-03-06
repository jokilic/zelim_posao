import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsCinnamon() async {
  var rawCinnamon = await Network(cinnamonURL).getData();

  // If there are problems with the company website, return this
  if (rawCinnamon == 'Problems fetching jobs') {
    return {
      'company': cinnamon,
      'jobs': ['Problems fetching jobs from $cinnamon'],
    };
  }

  var parsedCinnamon = parse(rawCinnamon);

  List parsedJobs = parsedCinnamon.getElementsByClassName('career-position');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': cinnamon,
    'jobs': jobs,
  };

  return finalJobs;
}
