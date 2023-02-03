import 'package:flutter/material.dart';

import '../../screens/login.dart';
import 'expanded_age_gender.dart';
import 'expanded_name_last_name.dart';

class FormData extends StatelessWidget {
  const FormData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(hintText: 'Username'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: 'Email'),
          ),
        ),
        ExpandedNameLastName(),
        ExpandedAgeGender(),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: 'Phone'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Confirm your password'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: InkWell(
            child: const Text(
              "Do you have an account? Sign In",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 17,
              ),
            ),
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const Login()),
              );
            },
          ),
        ),
      ],
    );
  }
}
