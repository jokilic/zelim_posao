import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsUndabot() async {
  var rawUndabot = await Network(undabotURL).getData();
  var parsedUndabot = parse(rawUndabot);

  List parsedJobs = parsedUndabot
      .getElementsByClassName('details-title job-title link--block-target');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': undabot,
    'jobs': jobs,
  };

  return finalJobs;
}
