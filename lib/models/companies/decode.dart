import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsDecode() async {
  var rawDecode = await Network(decodeURL).getData();
  var parsedDecode = parse(rawDecode);

  List parsedJobs = parsedDecode.getElementsByClassName('job__title');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': decode,
    'jobs': jobs,
  };

  return finalJobs;
}
