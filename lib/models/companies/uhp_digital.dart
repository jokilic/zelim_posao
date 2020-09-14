import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsUhpDigital() async {
  var rawUhpDigital = await Network(uhpDigitalURL).getData();
  var parsedUhpDigital = parse(rawUhpDigital);

  List parsedJobs = parsedUhpDigital.getElementsByTagName('h3');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': uhpDigital,
    'jobs': jobs,
  };

  return finalJobs;
}
