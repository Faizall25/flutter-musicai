import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromtScreen;
  const HomeScreen({super.key, required this.showPromtScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Container for all content
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF330000),
              Color(0xFF000000),
            ],
          ),
        ),

        //Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //First Expanded
            Expanded(
              flex: 3,

              //padding around image a stuck

              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),

                //Stack starts here
                child: Stack(
                  children: [
                    // Container for image
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sonnet.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.4,
                              color: const Color(0xFFFFFFFF),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 110.0,
                            width: 110.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/sonnetlogo.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Stuck end here
              ),
            ),
            //Second Expandad
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                //Column starts here
                child: Column(
                  children: [
                    //Richtxt here
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.inter(
                          height: 1.3,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'AI curated music play just for your mood \n',
                            style: GoogleFonts.inter(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xffffffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Get Started Now!',
                            style: GoogleFonts.inter(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Container Padding for arrow forward
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),

                      //Container for arrow forward in a padding
                      child: GestureDetector(
                        onTap: widget.showPromtScreen,
                        //Container for arrow forward
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFCCCC).withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            padding: const EdgeInsets.all(2.0),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFFFF),
                              shape: BoxShape.circle,
                            ),

                            //Arrow forward centered
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        //Column ends here
      ),
    );
  }
}
