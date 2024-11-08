import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const String githubUrl = 'https://github.com/IroshanRathnayake';
const String linkedinUrl = 'https://linkedin.com/in/IroshanRathnayake';

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

Widget header(BuildContext context) {
  return Column(
    children: [
      const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/profile.png'),
      ),
      const SizedBox(height: 12),
      Text(
        'Iroshan Rathnayake',
        style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        'Full Stack Developer • UI/UX Designer',
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 12),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => launchURL(linkedinUrl),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
             child: Image.asset('assets/github.png'),
          ),
          
          ElevatedButton(
            onPressed: () => launchURL(linkedinUrl),
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.transparent, 
              shadowColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            ),
            child: Image.asset('assets/linkedin.png'),
          ),
        ],
      ),
    ],
  );
}
