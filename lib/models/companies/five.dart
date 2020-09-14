import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsFive() async {
  var rawFive = await Network(fiveURL).getData();
  var parsedFive = parse(rawFive);

  var parsedJobs = parsedFive.getElementsByClassName('career-item__title');

  List spans;

  parsedJobs.forEach((job) {
    spans = job.getElementsByTagName('span');
    spans.forEach((span) => span.remove());
  });

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': five,
    'jobs': jobs,
  };

  return finalJobs;
}
