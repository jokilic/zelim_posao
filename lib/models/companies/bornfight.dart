import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsBornfight() async {
  var rawBornfight = await Network(bornfightURL).getData();
  var parsedBornfight = parse(rawBornfight);
  var parsedBornfightPositions =
      parsedBornfight.getElementsByClassName('careers-open-positions__list');

  List parsedJobs = parsedBornfightPositions[0].getElementsByClassName('u-a4');

  List<String?> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': bornfight,
    'jobs': jobs,
  };

  return finalJobs;
}
