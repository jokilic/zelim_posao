import 'package:html/parser.dart';

import '../../constants.dart';
import '../../network/network.dart';

// Scrapes the 'Carrers' page of the respective company and returns a Map with company name and jobs
Future<Map> getJobsUhpDigital() async {
  var rawUhpDigital = await Network(uhpDigitalURL).getData();
  var parsedUhpDigital = parse(rawUhpDigital);

  List jobSection =
      parsedUhpDigital.getElementsByClassName('elementor-element-49859ed1');
  List hiddenJobs =
      jobSection[0].getElementsByClassName('elementor-hidden-desktop');

  hiddenJobs.forEach((element) {
    element.remove();
  });

  List properJobsSection = jobSection[0].getElementsByTagName('section');
  List properJobs;
  List<String> jobs = [];

  properJobsSection.forEach((job) {
    properJobs = job.getElementsByTagName('h3');
    jobs.add(properJobs[0].text.trim());
  });

  Map finalJobs = {
    'company': uhpDigital,
    'jobs': jobs,
  };

  return finalJobs;
}
