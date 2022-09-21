import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NOTELY',
          style: GoogleFonts.nunito(
              fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: const Color(0xFFD9614C).withOpacity(0.1),
            backgroundImage: const AssetImage('assets/images/mask.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Shambhavi Mishra",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF403B36),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Lucknow, India",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF403B36),
              )),
          const SizedBox(
            height: 20,
          ),
          const ProfileTile(
            image: 'assets/icons/buy.svg',
            title: 'Buy Premium',
          ),
          const ProfileTile(
            image: 'assets/icons/edit.svg',
            title: 'Edit Profile',
          ),
          const ProfileTile(
            image: 'assets/icons/theme.svg',
            title: 'App Theme',
          ),
          const ProfileTile(
            image: 'assets/icons/bell.svg',
            title: 'Notifications',
          ),
          const ProfileTile(
            image: 'assets/icons/security.svg',
            title: 'Security',
          ),
          const ProfileTile(
            image: 'assets/icons/logout.svg',
            title: 'Log Out',
          ),
        ]),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final String image;
  final String title;
  const ProfileTile({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 35,
          width: 30,
          decoration: const BoxDecoration(color: Colors.white),
          child: SvgPicture.asset(
            image,
          )),
      title: Text(title),
      trailing: SvgPicture.asset(
        'assets/icons/arrow_left.svg',
      ),
    );
  }
}
