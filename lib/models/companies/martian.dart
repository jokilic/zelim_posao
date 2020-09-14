import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

Future<Map> getJobsMartian() async {
  var rawMartian = await Network(martianURL).getData();
  var parsedMartian = parse(rawMartian);

  List parsedJobs =
      parsedMartian.getElementsByClassName('Positions-module--jobTitle--21nad');

  List<String> jobs = [];
  parsedJobs.forEach((job) => jobs.add(job.text.trim()));

  Map finalJobs = {
    'company': martian,
    'jobs': jobs,
  };

  return finalJobs;
}
