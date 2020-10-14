import './companies/ars_futura.dart';
import './companies/bornfight.dart';
import './companies/cinnamon.dart';
import './companies/decode.dart';
import './companies/degordian.dart';
import './companies/five.dart';
import './companies/infinum.dart';
import './companies/martian.dart';
import './companies/microblink.dart';
import './companies/q_agency.dart';
import './companies/uhp_digital.dart';
import './companies/undabot.dart';

Map jobsArsFutura;
Map jobsBornfight;
Map jobsCinnamon;
Map jobsDecode;
Map jobsDegordian;
Map jobsFive;
Map jobsInfinum;
Map jobsMartian;
Map jobsMicroblink;
Map jobsQAgency;
Map jobsUhpDigital;
Map jobsUndabot;

List allJobs;

// Gets the data from the Web and stores it in a respective Map
Future getJobs() async {
  jobsArsFutura = await getJobsArsFutura();
  jobsBornfight = await getJobsBornfight();
  jobsCinnamon = await getJobsCinnamon();
  jobsDecode = await getJobsDecode();
  jobsDegordian = await getJobsDegordian();
  jobsFive = await getJobsFive();
  jobsInfinum = await getJobsInfinum();
  jobsMartian = await getJobsMartian();
  jobsMicroblink = await getJobsMicroblink();
  jobsQAgency = await getJobsQAgency();
  jobsUhpDigital = await getJobsUhpDigital();
  jobsUndabot = await getJobsUndabot();

  // Puts all created Maps in one big List
  allJobs = [
    jobsArsFutura,
    jobsBornfight,
    jobsCinnamon,
    jobsDecode,
    jobsDegordian,
    jobsFive,
    jobsInfinum,
    jobsMartian,
    jobsMicroblink,
    jobsQAgency,
    jobsUhpDigital,
    jobsUndabot,
  ];
}
