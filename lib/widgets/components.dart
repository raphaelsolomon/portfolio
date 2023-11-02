import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerComponentWithBorder(BuildContext context, Widget child) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.white.withOpacity(.4)),
        borderRadius: BorderRadius.circular(15.0)),
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
    child: child,
  );
}

Widget containerComponentWithOutBorder(BuildContext context, Widget child,
    {radius = 0.0, color = Colors.white24}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(radius)),
    child: child,
  );
}

Widget educationWidget(Map<String, String> data) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data['name']!,
            style: GoogleFonts.lato(
                color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold)),
        const SizedBox(height: 5.0),
        Text(data['date']!,
            style: GoogleFonts.lato(
                color: Color(0xFFffdb70),
                fontSize: 12.0,
                fontWeight: FontWeight.normal)),
        const SizedBox(height: 5.0),
        Text(data['qualification']!,
            style:  GoogleFonts.lato(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.normal)),
        const SizedBox(height: 15.0)
      ],
    ),
  );
}

Widget experienceWidget(Map<String, String> data) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data['title']!,
            style: GoogleFonts.lato(
                color: const Color(0xFFFFFFFF), fontWeight: FontWeight.bold)),
        const SizedBox(height: 5.0),
        Text(data['date']!,
            style: GoogleFonts.lato(
                color: const Color(0xFFffdb70),
                fontSize: 12.0,
                fontWeight: FontWeight.normal)),
        const SizedBox(height: 5.0),
        Text(data['employer']!,
            style:  GoogleFonts.lato(
                color: const Color(0xFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.normal)),
                const SizedBox(height: 5.0),
        Text(data['desc']!,
            style:  GoogleFonts.lato(
                color: const Color(0xFFFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.normal)),
        const SizedBox(height: 15.0)
      ],
    ),
  );
}
