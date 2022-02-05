import 'package:kelompok8_groceryfood/screens/loginscreen.dart';

import 'const/colors.dart';
import 'utils/helper.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = "/landingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: CustomClipperAppBar(),
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.5,
                  decoration: ShapeDecoration(
                      color: AppColor.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Image.asset('img/images/animasi/background.png',
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'img/images/animasi/grocery.png',
                height: 150,
                width: 150,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Flexible(
                      child: Text(
                        "Tempat yang tepat untuk bahan makanan segar dan makanan sehat",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        },
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all(AppColor.green),
                            shape: MaterialStateProperty.all(StadiumBorder(
                              side:
                                  BorderSide(color: AppColor.green, width: 1.5),
                            ))),
                        onPressed: () {},
                        child: Text("Buat akun sekarang"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlpoint = Offset(size.width * 0.24, size.height);
    Offset endpoint = Offset(size.width * 0.25, size.height * 0.96);
    Offset controlpoint2 = Offset(size.width * 0.3, size.height * 0.78);
    Offset endpoint2 = Offset(size.width * 0.5, size.height * 0.78);
    Offset controlpoint3 = Offset(size.width * 0.7, size.height * 0.78);
    Offset endpoint3 = Offset(size.width * 0.75, size.height * 0.96);
    Offset controlpoint4 = Offset(size.width * 0.76, size.height);
    Offset endpoint4 = Offset(size.width * 0.76, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.21, size.height)
      ..quadraticBezierTo(
          controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy)
      ..quadraticBezierTo(
          controlpoint2.dx, controlpoint2.dy, endpoint2.dx, endpoint2.dy)
      ..quadraticBezierTo(
          controlpoint3.dx, controlpoint3.dy, endpoint3.dx, endpoint3.dy)
      ..quadraticBezierTo(
          controlpoint4.dx, controlpoint4.dy, endpoint4.dx, endpoint4.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  bool shouldReclip(covariant CustomClipper<Path> oldPath) {
    return true;
  }
}
