import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsMicroblink() async {
  var rawMicroblink = await Network(microblinkURL).getData();
  var parsedMicroblink = parse(rawMicroblink);

  List parsedJobsContainer = parsedMicroblink.getElementsByClassName('mb-job');

  List? parsedJobs;

  List<String?> jobs = [];
  parsedJobsContainer.forEach((job) {
    parsedJobs = job.getElementsByClassName('title');
    jobs.add(parsedJobs![0].text.trim());
  });

  Map finalJobs = {
    'company': microblink,
    'jobs': jobs,
  };

  return finalJobs;
}
