import 'package:flutter/material.dart';
import 'package:notely/widgets/app_button.dart';
import 'package:notely/screens/create_account_screen.dart';
import 'package:notely/models/onboarding_model.dart';
import 'package:google_fonts/google_fonts.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late ValueNotifier<int> _currentNotifier;
  @override
  void initState() {
    _currentNotifier = ValueNotifier(0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
             Text(
              'NOTELY',
              style: GoogleFonts.nunito(fontSize: 20,fontWeight: FontWeight.w900),

            ),
            const SizedBox(
              height: 90,
            ),
            Expanded(
              child: PageView.builder(
                  itemCount: onboardingList.length,
                  onPageChanged: (value) {
                    _currentNotifier.value = value;
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(onboardingList[index].image),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          onboardingList[index].title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF403B36),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          onboardingList[index].subtitle,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF595550),
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    );
                  }),
            ),
            ValueListenableBuilder(
                valueListenable: _currentNotifier,
                builder: (
                    context,
                    currentValue,
                    child,
                    ) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: onboardingList.map((onboarding) {
                        return Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: onboarding.index == currentValue
                                ? theme.colorScheme.secondary
                                : theme.colorScheme.secondary.withOpacity(0.6),
                          ),
                        );
                      }).toList());
                }),
            const SizedBox(
              height: 70,
            ),
            AppButton(title: 'GET STARTED', onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CreateAccount()));
            }, ),

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
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
