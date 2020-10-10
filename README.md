![Header](https://raw.githubusercontent.com/jokilic/zelim_posao/master/screenshots/header.png)

# Želim posao! 👨‍💼

👨‍💼 **Želim posao!** (_I want a job!_) is a simple app made in **Flutter**. 🐦

It makes it easy to search for jobs from various IT companies based in Zagreb. 💼

#### I created it for two reasons:

1. I wanted to work more with **Flutter**. 👨‍💻
2. I'm searching for a job so I wanted to automate the process. 🏎️

#### How does it work? 👷‍♂️

1.  The app scrapes the sites of the companies I sympathise and would love to work at. 🏢
2.  It finds the job titles and stores them in a _Map_ of a particular company. 📦
3.  It filters those _Maps_ in order to show the information relevant for the user. 🧹

**User can search by keyword or see all jobs from desired company.** 👨‍💼

### Želim posao! can be downloaded from [HERE](https://play.google.com/store/apps/details?id=com.josipkilic.zelim_posao). 📲
&nbsp;

![Multi](https://raw.githubusercontent.com/jokilic/zelim_posao/master/screenshots/multi.png)

## Things I still want to do 👨‍💻

- [ ] Make the Header fixed - It shouldn't be scrollable.
- [ ] Refactor **search_results.dart** & **category_results.dart**.
- [x] Implement some icons with popular search terms.
- [x] UHP Digital made some changes to the site and it breaks the app. Update it.
- [x] Implement _BouncingScrollPhysics()_ on all scrollable elements.
- [x] Remove _hidden jobs_ from **UHP Digital**.
- [x] Make the **Categories** reflect the jobs without bundling everything in **home_page.dart**.
- [x] Build a production app.
- [x] Create screenshots of the app.
- [x] Create an icon for the app.
- [x] Fix 'starting screen' and 'no jobs screen' sometimes sticking on screen 
- [x] Implement **InfoScreen**.
- [x] Put some text in the loading screen, showing the user that the jobs are getting fetched.
- [x] Put all hardcoded text in **constants.dart**
- [x] Write comments explaining various procedures.
- [x] Implement some graphic when the screen is empty (on start & when there are no jobs).
