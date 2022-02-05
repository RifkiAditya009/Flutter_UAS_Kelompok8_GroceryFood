import '../const/colors.dart';
import '../screens/loginscreen.dart';
import '../utils/helper.dart';
import '../widgets/CustomTextinput.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Sign Up",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text("Silahkan isi datamu dengan benar"),
              Spacer(),
              CustomInputText(hintText: "Nama lengkap"),
              Spacer(),
              CustomInputText(hintText: "Email"),
              Spacer(),
              CustomInputText(hintText: "Nomor telepon"),
              Spacer(),
              CustomInputText(hintText: "Alamat"),
              Spacer(),
              CustomInputText(hintText: "Password"),
              Spacer(),
              CustomInputText(hintText: "Konfirmasi password"),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                    child: Text("Sign Up")),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun? "),
                    Text("Login",
                        style: TextStyle(
                            color: AppColor.green,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
