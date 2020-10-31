import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsFour0FourAgency() async {
  var rawFour0FourAgency = await Network(four0FourAgencyURL).getData();
  var parsedFour0FourAgency = parse(rawFour0FourAgency);

  List parsedJobs = parsedFour0FourAgency.getElementsByClassName('gray-line');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': four0FourAgency,
    'jobs': jobs,
  };

  return finalJobs;
}
