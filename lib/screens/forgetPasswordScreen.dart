import 'package:flutter/material.dart';
import 'package:kelompok8_groceryfood/utils/helper.dart';
import 'package:kelompok8_groceryfood/widgets/CustomTextinput.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const routeName = "/forgetPasswordScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  "Silahkan masukkan email anda untuk menerima sebuah link pembuatan password baru via email",
                  textAlign: TextAlign.center,
                ),
                CustomInputText(hintText: "Masukkan email anda"),
                Spacer(
                  flex: 2,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Kirim")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
