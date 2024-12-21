import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wedsnap/util/onboarding_card.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  //controller to keep track which page we are on
  final PageController _pagecontroller = PageController(initialPage: 0);

  final List<Widget> _onboardingpages = [OnboardingCard(image: "assets/images/oboard1.jpg"),
  OnboardingCard(image: "assets/images/onboard2.jpg"),
  OnboardingCard(image: "assets/images/onboard3.jpg"),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pagecontroller,
                children: _onboardingpages,
              )),
              //dots
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: SmoothPageIndicator(controller: _pagecontroller, count: 3,
              effect: WormEffect(
                dotColor: Theme.of(context).colorScheme.secondary,
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Theme.of(context).colorScheme.primary
              ),),
            )
          ],
        ),
      ), 
    );
  }
}