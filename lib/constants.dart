import 'package:flutter/material.dart';

// Strings
const String appName = 'Želim posao!';
const String belowTitleString = 'Pronađite posao za vas';
const String fetchingJobsString = 'Trenutak, molim...';
const String gentlemanString = 'Gospon Ferdinand traži poslove.';
const String searchJobsString = 'Pretraži poslove...';
const String findJobString = 'Pronađite posao iz snova';
const String noJobsString = 'Nema željenih poslova';

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
const String whatIsThisThirdString = '.';
const String whatIsThisFourthString =
    '\n\nPretražuje određene IT firme te omogućuje jednostavno pretraživanje aktivnih oglasa za posao.';

const String whyTitleString = 'Zašto? 🤷‍♀️';
const String whyFirstString = 'Napravio sam ju iz dva razloga:';
const String whySecondString = '1.';
const String whyThirdString = ' Htio sam napraviti nešto novo koristeći ';
const String whyFourthString = 'Flutter';
const String whyFifthString = ' .';
const String whySixthString = '2.';
const String whySeventhString =
    ' Tražim posao pa sam htio automatizirati proces.';

const String howTitleString = 'Kako radi? 👷‍♂️';
const String howFirstString = '1.';
const String howSecondString =
    ' Aplikacija dohvaća informacije sa službenih stranica firmi koje mi se sviđaju i u kojima bih htio raditi.';
const String howThirdString = '2.';
const String howFourthString =
    ' Pronađe naslove poslova sa svih stranica i spremi ih u ';
const String howFifthString = 'Map';
const String howSixthString = ' od relevantne firme.';
const String howFinalString =
    'Korisnik može pretraživati poslove ili vidjeti sve poslove odabrane tvrtke.';

const String ferdinandTitleString = 'Gospon Ferdinand? 🎩';
const String ferdinandFirstString = 'Gospon Ferdinand';
const String ferdinandSecondString =
    ' je gospodin kojeg je lako uočiti u šetnji starim zagrebačkim ulicama.\nNajčešće nosi ';
const String ferdinandThirdString = 'kuglasti šešir';
const String ferdinandFourthString =
    ' i uvijek je besprijekorno odjeven.\n\nOdlučio mi je pomoći u izradi ove aplikacije i na tome mu ';
const String ferdinandFifthString = 'beskrajno zahvaljujem';
const String ferdinandSixthString = '.\n\nVidite li ga kako bezbrižno šeće ';
const String ferdinandSeventhString = 'Zagrebom';
const String ferdinandEighthString =
    ', a ovdje nema posla kojemu se nadate, spomenite mu da biste cijenili kad bi se malo više potrudio. 🙃';

const String goodLuckString = 'Želim vam sreću u potrazi za željenim poslom!';
