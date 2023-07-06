import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notely/routes.dart';
import 'package:notely/view/widgets/app_button.dart';

class SubscribeScreen extends StatefulWidget {
  const SubscribeScreen({Key? key}) : super(key: key);

  @override
  State<SubscribeScreen> createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                    Text('Notely Peremium',
                 
                    style: GoogleFonts.nunito(fontSize: 16,fontWeight: FontWeight.w900),),
                    const SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:40),
                      child: Image.asset('assets/images/close.png'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              
              Image.asset('assets/images/premium.png'),
               const SizedBox(height: 10,),
              const Text(
                'Start Using Notely\n with Premium Benefits',
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color:  Color(0xFF403B36),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                 Image.asset('assets/images/done.png'),
                 const SizedBox(width: 15,),
                  const Text("Save unlimited notes to a single project",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF403B36),
                  ),)
                ],
              ), const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                 Image.asset('assets/images/done.png'),
                  const SizedBox(width: 15,),
                  const Text("Create unlimited projects and teams",
      
                      style:  TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF403B36),
                      ))
                ],
              ), const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset('assets/images/done.png'),
                   const SizedBox(width: 15,),
                  const Text("Daily backups to keep your data safe",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF403B36),
                      ))
                ],
              ), const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex =  0;
                       
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 5,
                              color: selectedIndex == 0
                                  ?
                              const Color(0xFFD9614C) : Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Annual',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF403B36),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('\$79.99',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF403B36),
                            )),
                            SizedBox(
                              width: 5,
                            ),
                            Text('per year',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF403B36),
                            ))
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              width: 5,
                              color: selectedIndex == 1
                                  ? const Color(0xFFD9614C)
                                  : Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Monthly',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF403B36),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('\$7.99',style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF403B36),
                            )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('per month',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF403B36),
                            ))
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
            AppButton(title: 'SUBSCRIBE',
                  onTap: (){
                   Navigator.of(context).pushNamed(AppRouter.noteCreation);}),
              const SizedBox(
                height: 20,
              ),
              InkWell(onTap: (){
                Navigator.of(context).pushNamed(AppRouter.profile);
              },
                child: const Text(
                  'Restore Purchase',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFD9614C),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
