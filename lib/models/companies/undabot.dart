import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsUndabot() async {
  var rawUndabot = await Network(undabotURL).getData();
  var parsedUndabot = parse(rawUndabot);

  List parsedJobs = parsedUndabot
      .getElementsByClassName('details-title job-title link--block-target');

  List<String?> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': undabot,
    'jobs': jobs,
  };

  return finalJobs;
}
