import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.purple;
Color kGradient2 = Colors.pinkAccent;

String imagePath = "assets/White_BG.png";

//String data to modify
String name = "Channa Fernando";
String username = "Channa F.";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1uZPqMWva6pZxzQxsR_ILLZ_FxJr24QeY/view?usp=sharing";

//Contact Email
String contactEmail = "samantha105394@gmail.com";

String aboutWorkExperience = '''
ML | Data Science | MPhil Reading| Lecturer| Senior Software Engineer

I have a First Class Engineering degree from the University of Moratuwa Sri Lanka with a strong background in mathematics and over 3 years of experience designing full stack solutions for Axiata Digital Labs Sri Lanka with around 0.2 billion subscribers spread across Asia, as well as over 2 years of experience developing machine learning-based solutions for a world ranked university.

I'm currently working as a Lecturer in Computer Engineering and Reading for a Master of Philosophy (ML & Deep Learning) at the University of Peradeniya, where I'm developing a machine learning-based solution for identifying fraud in online platforms. I've published several articles, and I've included a link to my most recent one below.''';

String aboutMeSummary = '''
⭐ Successfully Completed Over 10+ projects.
⭐ Master of Philosophy (Machine Learning & Deep Learning) Student & Lecturer University of Peradeniya.
⭐ I am familiar with almost all major tech stacks on "Data science/Software Engineering".
🥇 3 + years of significant experience in building Java based SaaS products.
'
✔️ Data Science - Google Colab, Jupitor NoteBook, PyCharm, TensorFlow, SciKit-Learn, Kerus, PyTorch, NumPy, Pandas, Matplotlib

✔️ Languages - Java, Python
✔️ Front-End - Angular, React
✔️ Back-End - Spring Boot
✔️ Databases - SQL, NoSQL, PostgreSQL
✔️ Cloud Platforms - Azure, AWS, GCP
✔️ DevOps & Tools - GitLab, GitHub, Bitbucket
✔️ DevOps - CI/CD
✔️ Mobile - Flutter, React Native

🏆 Research: Published Full papers on top-tier Machine Learning conferences and journals.

🎯 Currently I’m working on a "Learning Management System" for a Leading University in Sri Lanka as the Key Architect and Developer by "Managing around 3000 Users".

🎯 Data scientist I’m researching "Deep learning & Data Analysis" based solutions for "Detecting Frauds" in Web and Mobile platforms mainly in "Advertisement Industry".

🏆 Azure Cloud Certified Developer.
''';

String location = "Kandy, Sri Lanka";
String website = "channa fernando - linkedin";
String portfolio = "Google Scholar";
String email = "samantha105394@gmail.com";

List<Project> projectList = [
  Project(
      name: '''Content Management System University of Peradeniya''',
      description: '''
• Design UI/UX for new Modules.
• Develop new APIs for Front End Back End.
• Back End Developments (Java Spring Boot) and MYSQL DB.
• Front End Developments of the System (jQuery, HTML, CSS).
• System Deployment in the Cloud Environment(Centos 7).''',
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: '''Internet of Robotic Things Platform Axiata Sri Lanka''',
      description: ''' 
• RND of Internet of Robotic Thing platform.
• Developed architectural designs to implement web based IORT platform.
• Developed end to end the flow of the IORT design platform.
• Angular 8.0 Front-end developments.
• Java Spring boot backend developments.''',
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: '''Smart Poultry Sierad Produce Indonesia''',
      description: '''
• Fixed back-end security issues.
• Spring boot back-end development of Change Request 4.0
• Integrated new devices with Axiata Digital Labs IoT platform.
• Smart poultry support desk tasks.''',
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: '''Network Management System Dialog Axiata''',
      description: '''   
• Updated exiting device plugins and integrated new event and action handling flows.
• Integrated Imoni devices with Axiata Digital Labs IoT platform.
• Spring boot back-end developments of Change Request 1.0''',
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: '''Smart Poultry Edge Platform Sierad Produce Indonesia''',
      description: '''
• Developed and designed architectural flows between cloud application and edge.
• Spring boot back-end developments of Change Request 5.0
• Implemented app notification web socket in the smart poultry cloud back-end.''',
      link: "https://github.com/adityathakurxd/flutter-portfolio")
];
List<Project> researchList = [
  Project(
      name: '''Heart Disease Risk Identification using Machine Learning Techniques for a Highly Imbalanced Dataset: a Comparative Study''',
      description: '''
Heart disease has become one of the most prevailing universal diseases in the world today. It is estimated that 32% of all deaths worldwide are caused due to heart diseases. One of the major causes for this is that its extremely difficult even for medical practitioners to predict heart diseases as heart attacks as it is a complex task which requires a great amount of knowledge and experience. The number of deaths caused by heart diseases has hugely increased in the recent past. Machine learning has become one of the most popular areas in computer science where many complex problems have been addressed successfully specially in the field of medicine. In this study we trained multiple supervised classifiers namely’; Naïve Bayes, LightGBM, Decision Trees, Random Forest, XGBoost, K Nearest Neighbours and ADABoost and we compared the accuracies and identified what models perform better for heart disease prediction. We used the Behavioral Risk Factor Surveillance System (BRFSS) 2015 Heart Disease Health Indicators Dataset which was highly imbalanced and in order to address the class imbalance problem we used methods such as Synthetic Minority Over Sampling Technique (Smote) Sampling, Adaptive Synthetic Sampling, Random Over Sampling, Random Under Sampling, TomekLink, SmoteTomek, Smoteen and Cluster Centroid. According to the results obtained, we can conclude that the hybrid models such as Smoteen and SmoteTomek performed better than the other sampling methods.''',
      link: "https://doi.org/10.4038/kjms.v4i2.50"),
  Project(
      name: '''Detecting Click Fraud Using an Improved Lenet-5 Convolution Neural Network''',
      description: ''' 
Online advertising has grown drastically over the last couple of decades by making billions worth of business markets all over the world. Click Fraud can be identified as one of the common malpractices when it comes to digital platforms. This leads to an increase in the revenue of the Ad publishers and huge losses for the advertisers. Hence the need of detecting click fraud has become a major concern in online marketing. Recent studies have proposed different kinds of machine learning based approaches to detect these fraud activities. In this study, we propose an improved Lenet-5 Convolution Neural Network to identify click fraud. This proposed novel deep learning algorithm was able to achieve an accuracy of 99.09% by using deep features of the proposed Lenet-5 based Convolution Neural Network.''',
      link: "https://ieeexplore.ieee.org/abstract/document/10215038"),
  Project(
      name: '''Android Based Digital Contact Tracing and Health Monitoring System for Covid 19 Pandemic''',
      description: '''
      The World Health Organization has declared the SARS Covid 19 virus as a global pandemic due to its exponential transmission throughout the world. They have advised people to keep safe distances, to wash hands frequently, to wear a proper mask, and to get vaccinated at the earliest. They have also introduced new guidelines to adhere to the new normal. Despite these recommendations, public health system capacities have been exhausted in many countries and has caused deaths due to limited access to health care facilities. To reduce the number of deaths, WHO has further encouraged countries to implement home quarantine programs for people who are exposed to Covid 19 or have been a first contact of a Covid 19 patient. The purpose of this paper is to describe the development of an android-based application to monitor, track and advise the general public on various aspects of Covid 19 pandemic. This system mainly consists of an analytic dashboard that consists of latest statistics of Covid 19 pandemic, a health care monitoring system that can interact in real-time with health care authorities, an awareness platform to provide time-to-time updates on the latest guidelines provided by the health care authorities and also a Covid 19 contact tracing mechanism based on the google map. This system was tested with the help of randomly selected staff members and students of the Faculty of Engineering, University of Peradeniya.''',
      link: "https://doi.org/10.4038/engineer.v55i4.7551"),
];
