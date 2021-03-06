import 'dart:convert';

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

  var decodedSpeck = jsonDecode(rawSpeck);

  List<String> jobs = [];
  decodedSpeck.forEach((job) => jobs.add(job['title']['rendered'].trim()));

  Map finalJobs = {
    'company': speck,
    'jobs': jobs,
  };

  return finalJobs;
}
