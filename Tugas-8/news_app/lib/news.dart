import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Newspage extends StatelessWidget {
  const Newspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: PreferredSize(
    preferredSize: const Size.fromHeight(350),
    child: AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
              'assets/images/bgimage.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 350,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16, // Offset to avoid status bar
            left: 16,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20),
              child: ClipOval(
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
  body: Column(
  children: [
    Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(left: 32),
          child: Image.asset(
            'assets/images/author.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          'Samuel Newton',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xff141E28),
          ),
        ),
      ],
    ),

    const SizedBox(height: 32),

    Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'TECHNOLOGY',
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: Colors.grey,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left:32, top:7),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'To build responsibly, tech\n needs to do more than just\n hire chief ethics officers',
          style:GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w900
          )
        )
      )
    ),
    Padding(
      padding: const EdgeInsets.only(left:32, top:7),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '17 June, 2023 — 4:49 PM',
          style:GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xff141E28)
          )
        )
      )
    ),
    const SizedBox(height: 20),
    Container(
      width: 311,
      height: 2,
      color: Colors.grey
    ),

    const SizedBox(height:20),
  const Padding(
  padding: EdgeInsets.only(left: 32, right: 32),
  child: Text(
    '''In the last couple of years, we’ve seen
new teams in tech companies emerge
that focus on responsible innovation,
digital well-being, AI ethics or humane use. Whatever their titles, these
individuals are given the task of
“leading” ethics at their companies.''',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xff141E28),
    ),
    textAlign: TextAlign.left, // Left-aligned text
    overflow: TextOverflow.ellipsis, // Handles overflow with an ellipsis
    maxLines: 5, // Limits the text to 5 lines, or adjust based on your layout
  ),
)
  ],
),
);
}
}