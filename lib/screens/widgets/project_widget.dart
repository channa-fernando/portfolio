import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ProjectWidget extends StatelessWidget {
  final Project projectData;
  const ProjectWidget({super. key, required this.projectData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenConstraint().width * 0.4,
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.build,
                  color: kGrey,
                  size: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
            Expanded(
              child: Text(
                projectData.name,
                style: kSectionTitleText,
                maxLines: 3,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),

            ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    projectData.description,
                    maxLines: 6,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ])

          ),
          const Spacer(),
          // const Divider(),
          //---------------TODO Start CarouselSlider
          // CarouselSlider(
          //   options: CarouselOptions(
          //     height: 50, // Set the height of the carousel
          //     enlargeCenterPage: true, // Make the selected image larger
          //     enableInfiniteScroll: true, // Enable infinite scrolling
          //     autoPlay: true, // Auto-play the carousel
          //     autoPlayInterval: Duration(seconds: 3), // Auto-play interval
          //     autoPlayAnimationDuration: Duration(milliseconds: 800), // Animation duration
          //     autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
          //   ),
          //   items: imageUrls.map((url) {
          //     return Builder(
          //       builder: (BuildContext context) {
          //         return Container(
          //           width: MediaQuery.of(context).size.width,
          //           margin: EdgeInsets.symmetric(horizontal: 5.0),
          //           decoration: BoxDecoration(
          //             color: Colors.grey,
          //           ),
          //           child: Image.network(
          //             url,
          //             fit: BoxFit.cover,
          //           ),
          //         );
          //       },
          //     );
          //   }).toList(),
          // ),
          //---------------TODO End CarouselSlider
          //---------------TODO start button
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: ElevatedButton(
          //       onPressed: () async {
          //         //Launch project on GitHub
          //         final Uri url = Uri.parse(projectData.link);
          //         await launchUrl(url);
          //       },
          //       child: Text(
          //         "View Project",
          //         style: kSubTitleText.copyWith(color: Colors.white),
          //       ),
          //     ),
          //   ),
          // ),
          // ---------------TODO End button
        ]),
      ),
    );
  }
}
