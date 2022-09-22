import 'package:flutter/material.dart';
import 'package:notely/routes.dart';
import 'package:notely/widgets/app_button.dart';
import 'package:notely/widgets/app_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
             Text(
              'NOTELY',
              style: GoogleFonts.nunito(fontSize: 20,fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Create a free account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Color(0xFF403B36),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Join Notely for free. Create and share\nunlimited notes with your friends.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF595550),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            const AppTextField(
              title: 'Full Name',
              subtitle: 'Salman Khan',
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
              title: 'Email Address',
              subtitle: 'mesalmanwap@gmail.com',
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
              title: 'Password',
              subtitle: '#######',
            ),
            const SizedBox(
              height: 60,
            ),
            AppButton(title: 'Create Account', onTap: () {
           Navigator.of(context).pushNamed(AppRouter.subscribe);
            },),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Already have an account?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFFD9614C),
              ),
            ),
          ]),
        ),
      ),
    );  
  }
}

