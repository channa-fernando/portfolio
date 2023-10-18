import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ResearchWidget extends StatelessWidget {
  final Project projectData;
  const ResearchWidget({super. key, required this.projectData});

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
                  Icons.article_outlined,
                  color: kGrey,
                  size: 25,
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
            child:  Row(
              children: [
                Expanded(
                  child: Text(
                    projectData.description,
                    maxLines: 18,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),]
            )
          ),
          const Spacer(),
          const Divider(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () async {
                  //Launch project on GitHub
                  final Uri url = Uri.parse(projectData.link);
                  await launchUrl(url);
                },
                child: Text(
                  "View Publication",
                  style: kSubTitleText.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
