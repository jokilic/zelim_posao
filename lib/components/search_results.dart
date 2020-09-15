import 'package:flutter/material.dart';

import '../constants.dart';

// Shown when the user searches for jobs and it returns some results
class SearchResults extends StatelessWidget {
  final List filteredJobs;

  SearchResults(this.filteredJobs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: filteredJobs.length,
      itemBuilder: (context, numberOfCompanies) => CompanyWithJobs(
        filteredJobs,
        numberOfCompanies,
      ),
    );
  }
}

// Creates a company name and jobs that fit the search query
class CompanyWithJobs extends StatelessWidget {
  final List filteredJobs;
  final int numberOfCompanies;

  const CompanyWithJobs(
    this.filteredJobs,
    this.numberOfCompanies,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      margin: EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              filteredJobs[numberOfCompanies]['company'],
              style: TextStyle(
                color: textColor,
                fontSize: 28.0,
                fontFamily: 'Tiempos',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: filteredJobs[numberOfCompanies]['jobs'].length,
            itemBuilder: (context, numberOfJobs) => CompanyJobs(
              filteredJobs,
              numberOfCompanies,
              numberOfJobs,
            ),
          ),
        ],
      ),
    );
  }
}

// Creates jobs from each respective company that fit the search query
class CompanyJobs extends StatelessWidget {
  final List filteredJobs;
  final int numberOfCompanies;
  final int numberOfJobs;

  CompanyJobs(
    this.filteredJobs,
    this.numberOfCompanies,
    this.numberOfJobs,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
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
              filteredJobs[numberOfCompanies]['jobs'][numberOfJobs],
              style: TextStyle(
                color: textColor,
                fontFamily: 'Rubik',
                fontSize: 22.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
