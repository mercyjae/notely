import 'package:flutter/material.dart';
import 'package:notely/screens/premium_screen.dart';
import 'package:notely/widgets/app_button.dart';
import 'package:notely/widgets/app_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  late ValueNotifier<int> _currentNotifier;
  @override
  void initState() {
    _currentNotifier = ValueNotifier(0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const SizedBox(
              height: 20,
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
              height: 50,
            ),
            const AppTextField(
              title: 'Full Name',
              subtitle: 'Salman Khan',
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTextField(
              title: 'Email Address',
              subtitle: 'mesalmanwap@gmail.com',
            ),
            const SizedBox(
              height: 20,
            ),
            const AppTextField(
              title: 'Password',
              subtitle: '#######',
            ),
            const SizedBox(
              height: 100,
            ),
            AppButton(title: 'Create Account', onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PremiumScreen()));
            },),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Already create an account?',
              style: TextStyle(
                fontSize: 16,
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
