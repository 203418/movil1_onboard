import 'package:actividad1/screens/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:actividad1/screens/components/content_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  List<Map<String, String>> listBoarding = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/images/B1.png"
    },
    {
      "text": "ADOPTCIÓN",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B2.png"
    },
    {
      "text": "HOSPITALIDAD",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B3.png"
    },
    {
      "text": "VETERINARIA",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat.",
      "image": "assets/images/B4.png"
    },
    {
      "text": "TIENDA",
      "text1": "Compra todas las necesidades de tu mascota sin salir de casa.",
      "image": "assets/images/B5.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 4,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemCount: listBoarding.length,
            itemBuilder: (context, index) => ContentBoarding(
              text: listBoarding[currentPage]["text"]!,
              text1: listBoarding[currentPage]["text1"]!,
              image: listBoarding[currentPage]["image"]!,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            listBoarding.length,
            (index) => Pages(index: index, currentPage: currentPage),
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buttomBoarding(50, 330, "Botton")],
            )),
      ],
    ));
  }

  buttomBoarding(double height, double width, String test) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: BorderSide(
                color: currentPage == 4
                    ? Colors.green
                    : Color.fromARGB(255, 197, 196, 196),
                width: 2)),
        minimumSize: Size(width, height),
        backgroundColor: currentPage == 4 ? Colors.green : Colors.white,
        padding: const EdgeInsets.all(0));
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: TextButton(
        onPressed: cambiarVista,
        style: flatButtonStyle,
        child: Text(currentPage == 4 ? "Continuar" : "Siguiente",
            style: TextStyle(
              fontSize: 20,
              color: currentPage == 4 ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  void cambiarVista() {
    if (currentPage < 4) {
      setState(() {
        currentPage++;
      });
    }
  }
}

AnimatedContainer Pages({required int index, required int currentPage}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    margin: const EdgeInsets.all(3),
    height: currentPage == index ? 7 : 5,
    width: currentPage == index ? 30 : 20,
    decoration: BoxDecoration(
        color: currentPage == index
            ? Colors.pinkAccent
            : Color.fromARGB(255, 199, 199, 199),
        borderRadius: BorderRadius.circular(3)),
  );
}
