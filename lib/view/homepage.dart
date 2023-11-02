import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/aboutme.dart';
import 'package:portfolio/constant/otherdata.dart';
import 'package:portfolio/widgets/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 8, 24, 1),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  containerComponentWithBorder(
                    context,
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Image.asset(
                              'assets/images/avatar-1.png',
                              width: 80.0,
                              height: 80.0,
                            )),
                        const SizedBox(width: 15.0),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Uzoechi Chigozie Raphael',
                                  style: GoogleFonts.lato(
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10.0),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: Text('Mobile/Backend Developer',
                                    style: GoogleFonts.lato(
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.normal)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  containerComponentWithBorder(
                      context,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About Me',
                              style: GoogleFonts.lato(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10.0),
                          Text(AboutMe,
                              style: GoogleFonts.lato(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                  const SizedBox(height: 15.0),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('What I\'m Doing',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  containerComponentWithOutBorder(
                      context,
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/icon-app.svg'),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                    'Professional development of applications for iOS and Android.',
                                    style: GoogleFonts.lato(
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.normal))
                              ],
                            ),
                          )
                        ],
                      ),
                      color: Colors.white10,
                      radius: 10.0),
                  const SizedBox(height: 12.0),
                  containerComponentWithOutBorder(
                      context,
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/icon-dev.svg'),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                    'Implement/Build Backend applications and also Microservices Restful APIs or GraphQL.',
                                    style: GoogleFonts.lato(
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.normal))
                              ],
                            ),
                          )
                        ],
                      ),
                      color: Colors.white10,
                      radius: 10.0),
                  const SizedBox(height: 15.0),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('Skills',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  containerComponentWithBorder(
                      context,
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: SkillsData.map((e) => Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(e['title']!,
                                  style: GoogleFonts.lato(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.normal)),
                            )).toList(),
                      )),
                  const SizedBox(height: 15.0),
                  Text('Education',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  ...Education.map((e) => educationWidget(e)).toList(),
                  const SizedBox(height: 15.0),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('Experience',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  ...ExperienceData.map((e) => experienceWidget(e)).toList(),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('Courses',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: CoursesData.map((e) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 2.0),
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(e['title']!,
                              style: GoogleFonts.lato(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.normal)),
                        )).toList(),
                  ),
                  const SizedBox(height: 15.0),
                  Text('Certificate',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: CertificateData.map((e) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 2.0),
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(e['title']!,
                              style: GoogleFonts.lato(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.normal)),
                        )).toList(),
                  ),
                  const SizedBox(height: 15.0),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('Hobbies',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  ...HobbiesData.map((e) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 2.0),
                        margin: const EdgeInsets.only(bottom: 7.0),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(e['title']!,
                            style: GoogleFonts.lato(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 11.0,
                                fontWeight: FontWeight.normal)),
                      )).toList(),
                  const SizedBox(height: 15.0),
                  const Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                  Text('Qualities',
                      style: GoogleFonts.lato(
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0),
                  ...QualitiesData.map((e) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 2.0),
                        margin: const EdgeInsets.only(bottom: 7.0),
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(e['title']!,
                            style: GoogleFonts.lato(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 11.0,
                                fontWeight: FontWeight.normal)),
                      )).toList(),
                  const SizedBox(height: 50.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
