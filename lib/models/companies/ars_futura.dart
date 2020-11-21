import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsArsFutura() async {
  var rawArsFutura = await Network(arsFuturaURL).getData();
  var parsedArsFutura = parse(rawArsFutura);
  var parsedJobsContainer =
      parsedArsFutura.getElementsByClassName('careers__positions');

  List parsedJobs = parsedJobsContainer[0].getElementsByTagName('h3');

  List<String?> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': arsFutura,
    'jobs': jobs,
  };

  return finalJobs;
}
