import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Gets the JSON from the API called on the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsSpeck() async {
  var rawSpeck = await Network(speckURL).getData();

  // If there are problems with the company website, return this
  if (rawSpeck == 'Problems fetching jobs') {
    return {
      'company': speck,
      'jobs': ['Problems fetching jobs from $speck'],
    };
  }

  var parsedSpeck = parse(rawSpeck);

  List parsedJobs = parsedSpeck.getElementsByClassName('PageSectionJobs_title__1HkPn');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': speck,
    'jobs': jobs,
  };

  return finalJobs;
}
