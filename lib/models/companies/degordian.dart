import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsDegordian() async {
  var rawDegordian = await Network(degordianURL).getData();
  var parsedDegordian = parse(rawDegordian);

  List parsedJobs = parsedDegordian.getElementsByTagName('h4');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': degordian,
    'jobs': jobs,
  };

  return finalJobs;
}
