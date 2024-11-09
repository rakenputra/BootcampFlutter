import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingItem extends StatelessWidget {
final String imagepath;
final String title;
final String desc;

 ProfileSettingItem({
  required this.imagepath,
  required this.title,
  required this.desc,
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top:24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagepath),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff141E28)
                )
                ),
              SizedBox(height: 7,),
              Text(
                desc,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.48)
                ),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Image.asset(
              'assets/icons/arrow_forward.png'
            ),
          )
        ]
      )
      );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left:32),
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/icons/Menu_Icon.png',
                    fit: BoxFit.cover,
                  )
                ),
              ) ,
            ),
            Spacer(),
            Padding(
              padding:EdgeInsets.only(right: 32),
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/icons/Search_Icon.png',
                    fit: BoxFit.cover
                  )
                ),
              ),
              )
          ],
        ),
       ),
       body: Padding(
         padding: const EdgeInsets.only(top: 32, left: 32),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: GoogleFonts.poppins(
                fontSize: 36,
                fontWeight: FontWeight.w800
              )
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/profile.png'),
              title: ('Profile settings'),
              desc: ('Settings regarding your profile'),
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/news.png'),
              title: ('News settings'),
              desc: ('Choose your favourite topics'),
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/bell.png'),
              title: ('Notifications'),
              desc: ('When would you like to be notified'),
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/folder.png'),
              title: ('Subscriptions'),
              desc: ('Currently, you are in Starter Plan'),
            ),
            SizedBox(height: 32),
            Text(
              'Other',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/bug.png'),
              title: ('Bug report'),
              desc: ('Report bugs very easy'),
            ),
            ProfileSettingItem(
              imagepath: ('assets/icons/share_app.png'),
              title: ('Share the app'),
              desc: ('Share on social media networks'),
            ),
          ],
         ),
       ),
    );
  }
}


