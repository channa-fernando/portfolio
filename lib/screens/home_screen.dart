
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:portfolio/screens/widgets/research_widget.dart';

import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imageUrls = [
  'assets/aLearning_Management_System.png',
  'assets/aLeraning_Management_System1.png',
  'assets/IORT_Project.png',
  'assets/IORT_Project1.png',
  'assets/JScreenshot_363.png',
  'assets/JSmart_Poutry.png',
  'assets/JSmart_Poutry2.png',
  'assets/NMS_Project.png',
  'assets/ZScreenshot_1640327296.png',
  'assets/ZScreenshot_1640327339.png',
  'assets/ZScreenshot_1640327444.png',
];
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Portfolio Channa Fernando",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              "@$username",
              style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // OutlinedButton(
                //     onPressed: () async {
                //       //Code to launch resume
                //       final Uri url = Uri.parse(resumeLink);
                //       await launchUrl(url);
                //     },
                //     child: Text(
                //       "View Resume",
                //       style: kSubTitleText,
                //     )),
                // const SizedBox(
                //   width: 10,
                // ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: context.screenConstraint().width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutWorkExperience),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(aboutMeSummary),
                                const Divider(),
                                Text("Software Projects", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Location",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on,
                                                size: 16,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                location,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Website",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(website),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Link(
                                                  target: LinkTarget.blank,
                                                  uri: Uri.parse("https://www.linkedin.com/in/channa-fernando-444032196/"),
                                                  builder: (context, followLink) => MouseRegion(
                                                    cursor: SystemMouseCursors.click,
                                                    child: GestureDetector(
                                                      onTap: followLink,
                                                      child: const Icon(
                                                        Icons.launch,
                                                        size: 16,
                                                      ),
                                                      ),
                                                    ),
                                                  )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Google Scholaro",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(portfolio),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Link(
                                                target: LinkTarget.blank,
                                                uri: Uri.parse("https://scholar.google.com/citations?user=0DSffVoAAAAJ"),
                                                builder: (context, followLink) => MouseRegion(
                                                  cursor: SystemMouseCursors.click,
                                                  child: GestureDetector(
                                                    onTap: followLink,
                                                    child: const Icon(
                                                      Icons.launch,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Email",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(email),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Link(
                                                target: LinkTarget.blank,
                                                uri: Uri.parse("mailto:samantha105394@gmail.com"),
                                                builder: (context, followLink) => MouseRegion(
                                                  cursor: SystemMouseCursors.click,
                                                  child: GestureDetector(
                                                    onTap: followLink,
                                                    child: const Icon(
                                                      Icons.launch,
                                                      size: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutWorkExperience),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(aboutMeSummary),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.circle,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Website",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(website),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Google Scholar",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(portfolio),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Email",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(email),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.launch,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisExtent: 175),

                        // childAspectRatio:
                          //     context.screenConstraint().width > 1000 ? 3 : 2),

                      itemCount: projectList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProjectWidget(
                          projectData: projectList[index],
                        );
                      })),
            ),
            //-----------------------TODO: Remove Comment Starting from here
            Center(
              child: SizedBox(
                width: context.screenConstraint().width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
                          Text("Publications", style: kSectionTitleText),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),
            Center(
              child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisExtent: 500),
                          // childAspectRatio:
                          // context.screenConstraint().width > 1000 ? 3 : 2),
                      itemCount: researchList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ResearchWidget(
                          projectData: researchList[index],
                        );
                      })),
            ),

            const SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Divider(),
                            Text("Software Project's Screen Shots", style: kSectionTitleText),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),

            CarouselSlider(
              options: CarouselOptions(
                height: 600, // Set the height of the carousel
                enlargeCenterPage: true, // Make the selected image larger
                enableInfiniteScroll: true, // Enable infinite scrolling
                autoPlay: true, // Auto-play the carousel
                autoPlayInterval: Duration(seconds: 3), // Auto-play interval
                autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
              ),
              items: imageUrls.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: new Image.asset(
                        url,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
              //TODO: FOR URLS Start
              // items: imageUrls.map((url) {
              //   return Builder(
              //     builder: (BuildContext context) {
              //       return Container(
              //         width: MediaQuery.of(context).size.width,
              //         margin: EdgeInsets.symmetric(horizontal: 5.0),
              //         decoration: BoxDecoration(
              //           color: Colors.grey,
              //         ),
              //         child: Image.network(
              //           url,
              //           fit: BoxFit.cover,
              //         ),
              //       );
              //     },
              //   );
              // }).toList(),
              //TODO: FOR URLS End
            ),
            //-----------------------TODO: Remove Comment Ending from here
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
