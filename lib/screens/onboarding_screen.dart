import 'package:flutter/material.dart';
import 'package:sawo/sawo.dart';
import 'package:sawo_flutter/models/user_data.dart';
import 'package:sawo_flutter/screens/profile_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  // sawo object
  Sawo sawo = Sawo(
    apiKey: "Your API Key",
    secretKey: "Your Secret Key",
  );

  // user payload
  String user = "";

  void payloadCallback(context, payload) {
    if (payload == null || (payload is String && payload.length == 0)) {
      payload = "Login Failed :(";
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfileScreen(userData: userDataFromJson(payload),)));
  }

  String catImageURL = 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-cat-wearing-sunglasses-while-sitting-royalty-free-image-1571755145.jpg';


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.07,
          ),
          Center(
            child: SizedBox(
              height: height * 0.6,
              width: width * 0.85,
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.4,
                        width: width * 0.85,
                        child: Image.network(catImageURL)
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '*Onboarding Screen Text* mention app features',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                sawo.signIn(
                  context: context,
                  identifierType: 'email',
                  callback: payloadCallback,
                );
              },
              child: Container(
                width: width * 0.8,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Center(
                  child: Text(
                    'Sign in with Email',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          //Sign in with Anonymously
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                sawo.signIn(
                  context: context,
                  identifierType: 'phone_number_sms',
                  callback: payloadCallback,
                );
              },
              child: Container(
                width: width * 0.8,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: const Center(
                  child: Text(
                    'Sign in with Phone',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}