import 'package:flutter/material.dart';
import './models/popular_search.dart';

// Popular Search
final PopularSearch android = PopularSearch(
  name: 'Android',
  logo: androidImage,
  queries: androidQueries,
);
final PopularSearch design = PopularSearch(
  name: 'Design',
  logo: designImage,
  queries: designQueries,
);
final PopularSearch flutter = PopularSearch(
  name: 'Flutter',
  logo: flutterImage,
  queries: flutterQueries,
);
final PopularSearch iOS = PopularSearch(
  name: 'iOS',
  logo: iOSImage,
  queries: iOSQueries,
);
final PopularSearch javascript = PopularSearch(
  name: 'JavaScript',
  logo: javascriptImage,
  queries: javascriptQueries,
);
final PopularSearch projectManager = PopularSearch(
  name: 'Project Manager',
  logo: projectManagerImage,
  queries: projectManagerQueries,
);
final PopularSearch python = PopularSearch(
  name: 'Python',
  logo: pythonImage,
  queries: pythonQueries,
);
final PopularSearch qa = PopularSearch(
  name: 'QA',
  logo: qaImage,
  queries: qaQueries,
);
final PopularSearch react = PopularSearch(
  name: 'React',
  logo: reactImage,
  queries: reactQueries,
);
final PopularSearch web = PopularSearch(
  name: 'Web',
  logo: webImage,
  queries: webQueries,
);
final PopularSearch system = PopularSearch(
  name: 'System',
  logo: systemImage,
  queries: systemQueries,
);
final PopularSearch junior = PopularSearch(
  name: 'Junior',
  logo: juniorImage,
  queries: juniorQueries,
);

final List<PopularSearch> popularSearches = [
  javascript,
  android,
  web,
  iOS,
  react,
  flutter,
  junior,
  design,
  projectManager,
  python,
  qa,
  system,
];

// Strings
const String appName = 'Želim posao!';
const String belowTitleString = 'Pronađite posao za vas';
const String fetchingJobsString = 'Trenutak, molim...';
const String gentlemanString = 'Gospon Ferdinand traži poslove.';
const String searchJobsString = 'Pretraži poslove...';
const String findJobString = 'Pronađite posao iz snova';
const String noJobsString = 'Nismo našli traženi posao';
const String popularJobsCallToAction =
    'Možda vas zanima neka od popularnih pretraga';
const String ferdinandMessage = 'Želim vam sreću u potrazi za željenim poslom.';

// Fonts
const String rubikFont = 'Rubik';
const String tiemposFont = 'Tiempos';

// Colors
const Color textColor = Color(0xFF242424);
const Color backgroundColor = Color(0xFFE9E9E9);

// Images
const String backgroundImage = 'assets/waves.png';
const String gentlemanImage = 'assets/gentleman.png';
const String findJobImage = 'assets/briefcase.png';
const String noJobsImage = 'assets/sad.png';
const String androidImage = 'assets/android.png';
const String designImage = 'assets/design.png';
const String flutterImage = 'assets/flutter.png';
const String iOSImage = 'assets/ios.png';
const String javascriptImage = 'assets/javascript.png';
const String projectManagerImage = 'assets/projectmanager.png';
const String pythonImage = 'assets/python.png';
const String qaImage = 'assets/qa.png';
const String reactImage = 'assets/react.png';
const String webImage = 'assets/web.png';
const String systemImage = 'assets/system.png';
const String juniorImage = 'assets/junior.png';

// Popular job queries
const List<String> androidQueries = [
  'android',
  'kotlin',
];
const List<String> javascriptQueries = [
  'javascript',
  'js',
];
const List<String> projectManagerQueries = [
  'project',
  'pm',
  'manager',
];
const List<String> designQueries = [
  'design',
  'dizajn',
  'ui',
  'ux',
];
const List<String> iOSQueries = [
  'ios',
  'apple',
];
const List<String> flutterQueries = [
  'flutter',
];
const List<String> qaQueries = [
  'qa',
  'test',
];
const List<String> reactQueries = [
  'react',
];
const List<String> webQueries = [
  'web',
  'front',
  'react',
  'angular',
  'vue',
];
const List<String> juniorQueries = [
  'junior',
  'student',
];
const List<String> systemQueries = [
  'sys',
  'sistem',
  'admin',
];
const List<String> pythonQueries = [
  'python',
];

// Companies
const String arsFutura = 'Ars Futura';
const String bornfight = 'Bornfight';
const String cinnamon = 'cinnamon.agency';
const String degordian = 'Degordian';
const String five = 'Five';
const String infinum = 'Infinum';
const String martian = 'Martian & Machine';
const String microblink = 'Microblink';
const String qAgency = 'Q agency';
const String uhpDigital = 'UHP Digital';
const String undabot = 'Undabot';

// Categories
const List<String> categories = [
  arsFutura,
  bornfight,
  cinnamon,
  degordian,
  five,
  infinum,
  martian,
  microblink,
  qAgency,
  uhpDigital,
  undabot,
];

// Job URLs
const String arsFuturaURL = 'https://arsfutura.com/careers';
const String bornfightURL = 'https://www.bornfight.com/careers';
const String cinnamonURL = 'https://cinnamon.agency/careers';
const String degordianURL = 'https://degordian.com/career';
const String fiveURL = 'https://five.agency/careers';
const String infinumURL = 'https://infinum.com/careers';
const String martianURL = 'https://martian.ventures/careers';
const String microblinkURL = 'https://microblink.com/careers';
const String qAgencyURL = 'https://q.agency/careers';
const String uhpDigitalURL = 'https://uhp.digital/en/career';
const String undabotURL = 'https://careers.smartrecruiters.com/Undabot';

// Decorations
TextStyle searchStyle() {
  return TextStyle(
    fontSize: 18.0,
    color: textColor,
    fontFamily: rubikFont,
  );
}

InputDecoration inputDecoration() {
  return InputDecoration(
    hintText: searchJobsString,
    hintStyle: searchStyle(),
    suffixIcon: Icon(Icons.search),
    contentPadding: EdgeInsets.all(16.0),
  );
}

// Info Screen
const String whatIsThisTitleString = 'Što je ovo? 🤔';
const String whatIsThisFirstString =
    ' je jednostavna aplikacija napravljena u ';
const String whatIsThisSecondString = 'Flutteru';
const String whatIsThisThirdString = '. 🐦';
const String whatIsThisFourthString =
    '\n\nDohvaća poslove određenih IT firmi te omogućuje jednostavno pretraživanje aktivnih oglasa za posao. 💼';

const String whyTitleString = 'Zašto? 🤷‍♀️';
const String whyFirstString = 'Napravio sam ju iz dva razloga:';
const String whySecondString = '1.';
const String whyThirdString = ' Htio sam napraviti nešto novo koristeći ';
const String whyFourthString = 'Flutter';
const String whyFifthString = ' . 👨‍💻';
const String whySixthString = '2.';
const String whySeventhString =
    ' Tražim posao pa sam htio automatizirati proces. 🏎️';

const String howTitleString = 'Kako radi? 👷‍♂️';
const String howFirstString = '1.';
const String howSecondString =
    ' Aplikacija dohvaća informacije sa službenih stranica firmi koje mi se sviđaju i u kojima bih htio raditi. 🏢';
const String howThirdString = '2.';
const String howFourthString =
    ' Pronađe naslove poslova sa svih stranica i spremi ih u ';
const String howFifthString = 'Map';
const String howSixthString = ' od relevantne firme. 📦';
const String howSeventhString = '3.';
const String howEighthString = ' Filtrira te ';
const String howNinthString = 'Mape';
const String howTenthString =
    ' i prikazuje informacije relevantne za korisnika. 🧹';
const String howFinalString =
    'Korisnik može pretraživati poslove ili vidjeti sve aktivne oglase odabrane tvrtke. 👨‍💼';

const String ferdinandTitleString = 'Gospon Ferdinand? 🎩';
const String ferdinandFirstString = 'Gospon Ferdinand';
const String ferdinandSecondString =
    ' je gospodin kojeg je lako uočiti u šetnji starim zagrebačkim ulicama.\nNajčešće nosi ';
const String ferdinandThirdString = 'kuglasti šešir';
const String ferdinandFourthString =
    ' i uvijek je besprijekorno odjeven. 🕴️\n\nOdlučio mi je pomoći u izradi ove aplikacije i na tome mu ';
const String ferdinandFifthString = 'beskrajno zahvaljujem';
const String ferdinandSixthString = '.\n\nVidite li ga kako bezbrižno šeće ';
const String ferdinandSeventhString = 'Zagrebom';
const String ferdinandEighthString =
    ', a ovdje nema posla kojemu se nadate, spomenite mu da biste cijenili kad bi se malo više potrudio. 🙃';

const String goodLuckString =
    'Želim vam sreću u potrazi za željenim poslom! 🍀';
