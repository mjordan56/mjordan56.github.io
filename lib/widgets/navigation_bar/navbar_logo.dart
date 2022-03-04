import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  Widget _textLogo() {
    return RichText(
      text: TextSpan(
          text: 'Shiny',
          style: TextStyle(
            color: Color.fromARGB(255, 70, 184, 246),
            fontSize: 32,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' Object',
              style: TextStyle(
                color: Color.fromARGB(255, 9, 66, 137),
                fontSize: 26,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextSpan(
              text: ' Affliction',
              style: TextStyle(
                color: Color.fromARGB(255, 9, 66, 137),
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('Size: $size');
    return _textLogo();
    // return ResponsiveBuilder(
    //   builder: (context, sizingInformation) {
    //     return sizingInformation.isMobile
    //         ? _textLogo() : _textLogo();
    //         // : SizedBox(
    //         //     height: 100,
    //         //     width: 200,
    //         //     child: Image.asset(
    //         //         'assets/images/logos/shiny_logo_200x100.png'),
    //         //   );
    //   },
    // );
  }
}
