import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the homepage of the respective company and returns a Map with company name and jobs
Future<Map> getJobsTrikoder() async {
  var rawTrikoder = await Network(trikoderURL).getData();
  var parsedTrikoder = parse(rawTrikoder);

  List parsedJobs = parsedTrikoder.getElementsByClassName('job-list-link');

  List<String?> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': trikoder,
    'jobs': jobs,
  };

  return finalJobs;
}
