import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsUhpDigital() async {
  var rawUhpDigital = await Network(uhpDigitalURL).getData();
  var parsedUhpDigital = parse(rawUhpDigital);

  List parsedJobs = parsedUhpDigital
      .getElementsByClassName('uhp-open-positions__wrapper-item-title');

  List<String?> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': uhpDigital,
    'jobs': jobs,
  };

  return finalJobs;
}
