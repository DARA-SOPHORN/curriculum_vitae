import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  // OPEN TELEGRAM
  Future<void> openTelegram() async {
    final Uri url = Uri.parse("https://t.me/dsophorn");
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  // OPEN EMAIL
  Future<void> openEmail() async {
    final Uri email = Uri(
      scheme: 'mailto',
      path: 'daraphorn114@gmail.com',
      query: 'subject=Contact from CV',
    );
    await launchUrl(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // IMAGE
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: const AssetImage("assets/DARA_SOPHORN.jpg"),
              ),
            ),

            const SizedBox(height: 15),

            // NAME
            Text(
              "DARA SOPHORN",
              style: const TextStyle(
                fontFamily: "Elephant",
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Center(
              child: Text(
                "(STUDENT — Telecommunication & Networking Engineering)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ),

            const SizedBox(height: 25),

            // TWO COLUMN LAYOUT
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LEFT COLUMN ---------------------------------------------------
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sectionTitle("ABOUT ME"),
                      detailText(
                        "I am a third-year student at the Institute of Technology of "
                        "Cambodia, majoring in Telecommunication and Networking Engineering.",
                      ),
                      sectionTitle("CONTACT"),
                      detailText("Phone: +855963566546"),
                      GestureDetector(
                        onTap: openEmail,
                        child: detailLink("Email: daraphorn114@gmail.com"),
                      ),
                      GestureDetector(
                        onTap: openTelegram,
                        child: detailLink("Telegram: https://t.me/dsophorn"),
                      ),
                      detailText(
                          "Address: Tuek Thla, Khan Sen Sok, Phnom Penh"),
                      sectionTitle("EDUCATION"),
                      detailText(
                          "Institute of Technology of Cambodia (2022–2025)\n"
                          "Telecommunication & Networking Engineering"),
                      detailText(
                          "Hun Sen Treuy Sla High School (2019–2022)\nDiploma & BAC II"),
                      sectionTitle("LANGUAGES"),
                      detailText("Khmer (Native)"),
                      detailText("English (B1)"),
                      detailText("French (B1)"),
                    ],
                  ),
                ),

                // RIGHT COLUMN ---------------------------------------------------
                const SizedBox(width: 20),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sectionTitle("WORK EXPERIENCE"),
                      detailText(
                          "Cameraman (2023–2024)\nWorked with creators LENG LENG & SAY TY."),
                      detailText(
                          "Service (2025)\nStrong communication & teamwork skills."),
                      detailText(
                          "Sales, Content Creator, Cameraman, Video Editor, Designer, Script Writer\n"
                          "DAHAI Solar Cambodia (2025)"),
                      sectionTitle("SKILL"),
                      detailText("Communication skills"),
                      detailText("Content Creation"),
                      detailText("Photography & Videography"),
                      detailText("Video / Photo Editing"),
                      detailText("Programming: C, C++, JavaFX"),
                      detailText("Microsoft Office"),
                      sectionTitle("REFERENTS"),
                      detailText("Dr. Sreng Sokchenda"),
                      detailText(
                          "Head of Telecommunication & Networking Engineering, ITC"),
                      detailText("Phone: +85512407910"),
                      detailText("Email: sokchenda@itc.edu.kh"),
                    ],
                  ),
                ),
              ],
            ),

            //const SizedBox(height: 30),

            // BOTTOM (REFERENTS)
            //sectionTitle("REFERENTS"),
            //detailText(
            //"Dr. Sreng Sokchenda\n"
            //"Head of Telecommunication & Networking Engineering, ITC\n"
            //"Phone: +85512407910\n"
            //"Email: sokchenda@itc.edu.kh",
          ],
        ),
      ),
    );
  }

  // ------------------------
  // SECTION TITLE (Impact Font)
  // ------------------------
  Widget sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: "Impact",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ------------------------
  // DETAIL TEXT (Times New Roman)
  // ------------------------
  Widget detailText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: "TimesNewRoman",
          fontSize: 12,
        ),
      ),
    );
  }

  // ------------------------
  // LINK STYLE TEXT
  // ------------------------
  Widget detailLink(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: "TimesNewRoman",
        fontSize: 12,
        decoration: TextDecoration.underline,
        color: Colors.blue,
      ),
    );
  }
}
