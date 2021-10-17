import 'package:flutter/material.dart';
import 'package:sawo_flutter/models/user_data.dart';

class ProfileScreen extends StatelessWidget {
  UserData userData;
  ProfileScreen({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(userData.userId), Text(userData.identifierType)],
        ),
      ),
    );
  }
}
