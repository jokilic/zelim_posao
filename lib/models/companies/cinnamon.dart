import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsCinnamon() async {
  var rawCinnamon = await Network(cinnamonURL).getData();
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
