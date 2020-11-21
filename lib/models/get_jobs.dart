import './companies/four0four_agency.dart';
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
import './companies/speck.dart';
import './companies/trikoder.dart';
import './companies/uhp_digital.dart';
import './companies/undabot.dart';

Map? jobsFour0FourAgency;
Map? jobsArsFutura;
Map? jobsBornfight;
Map? jobsCinnamon;
Map? jobsDecode;
Map? jobsDegordian;
Map? jobsFive;
Map? jobsInfinum;
Map? jobsMartian;
Map? jobsMicroblink;
Map? jobsQAgency;
Map? jobsSpeck;
Map? jobsTrikoder;
Map? jobsUhpDigital;
Map? jobsUndabot;

late List allJobs;

// Gets the data from the Web and stores it in a respective Map
Future getJobs() async {
  jobsFour0FourAgency = await getJobsFour0FourAgency();
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
  jobsSpeck = await getJobsSpeck();
  jobsTrikoder = await getJobsTrikoder();
  jobsUhpDigital = await getJobsUhpDigital();
  jobsUndabot = await getJobsUndabot();

  // Puts all created Maps in one big List
  allJobs = [
    jobsFour0FourAgency,
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
    jobsSpeck,
    jobsTrikoder,
    jobsUhpDigital,
    jobsUndabot,
  ];
}
