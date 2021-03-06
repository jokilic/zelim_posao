import 'package:flutter/material.dart';

import '../../constants.dart';

// Results that are shown when pressing on any of the Categories (companies)
class CategoryResults extends StatelessWidget {
  final Map companyJobs;

  CategoryResults(this.companyJobs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 1,
      // Generates the desired company name
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        margin: EdgeInsets.only(bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                companyJobs['company'],
                style: TextStyle(
                  color: textColor,
                  fontSize: 28.0,
                  fontFamily: tiemposFont,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Generates the jobs from the desired company
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: companyJobs['jobs'].length,
              itemBuilder: (context, numberOfJobs) => Container(
                margin: EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: textColor,
                      size: 22.0,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        companyJobs['jobs'][numberOfJobs],
                        style: TextStyle(
                          color: textColor,
                          fontFamily: rubikFont,
                          fontSize: 22.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
