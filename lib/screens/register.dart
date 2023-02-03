import 'package:flutter/material.dart';

import '../widgets/register/form_data.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 48),
          child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
                child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                children: [
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Welcome again, you can Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Lobster',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image(
                            image: AssetImage('assets/images/avatar1.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FormData(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.all(12),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Register me!',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ));
          }),
        ),
      ),
    );
  }
}