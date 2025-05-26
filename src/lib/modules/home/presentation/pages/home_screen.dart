import 'package:flutter/material.dart';
import 'package:src/modules/home/data/repositories/imp_homepage.dart';
import 'package:src/modules/home/domain/repositories/i_home_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final IHomePage homePageData = ImpHomepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Updating!"),
            const TextField(),
            const TextField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  homePageData.homeData('Karl', 'Karl Gwapo');
                  print('Submitting....');
                },
                child: const Text(
                  'Submit',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
