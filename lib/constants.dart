import 'package:flutter/material.dart';

// Strings
const String appName = 'Želim posao!';
const String searchJobsString = 'Pretraži poslove...';
const String findJobString = 'Pronađite posao iz snova';
const String noJobsString = 'Nema željenih poslova';

// Colors
const Color textColor = Color(0xFF242424);
const Color backgroundColor = Color(0xFFE9E9E9);

// Images
const String backgroundImage = 'assets/waves.png';
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
    fontFamily: 'Rubik',
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
