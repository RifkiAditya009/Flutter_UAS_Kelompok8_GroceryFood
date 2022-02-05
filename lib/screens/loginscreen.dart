import 'package:kelompok8_groceryfood/main.dart';

import '../screens/forgetPasswordScreen.dart';

import '../const/colors.dart';
import '../widgets/CustomTextinput.dart';
import 'package:flutter/material.dart';
import '../utils/helper.dart';
import '../screens/signUpScreen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  "LOGIN",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Silahkan masuk untuk dapat melakukan transaksi",
                ),
                Spacer(),
                CustomInputText(hintText: "Masukkan email"),
                Spacer(),
                CustomInputText(hintText: "Masukkan password"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(MyHomePage.routename);
                    },
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ForgetPasswordScreen.routeName);
                    },
                    child: Text("Anda lupa password?")),
                Spacer(
                  flex: 2,
                ),
                Text("Atau Login Dengan"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color(0xFF067FC0),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("img/images/animasi/fb.png",
                            height: 30, width: 30),
                        SizedBox(width: 10),
                        Text("Login dengan Facebook"),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color(0xFFDD4B39),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("img/images/animasi/g+.png",
                            height: 30, width: 30),
                        SizedBox(width: 10),
                        Text("Login dengan Google"),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tidak punya akun? "),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColor.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
