import 'package:flutter/material.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';

import 'widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text('SayTu Jiguéén Ni',
                    style: TextStyle(
                        color: GlobalColors().mainColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 50 ,),
              Text('Veuillez renseigner vos identifiants',
                  style: TextStyle(
                      color: GlobalColors().textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 15 ,),
              ////Email
              TextFormGlobal(controller: emailController, text: 'Nom d\'utilisateur',obscure: false,textInputType: TextInputType.emailAddress,),
              const SizedBox(height: 10 ,),
              //password
              TextFormGlobal(controller: passwordController, text: 'Mot de passe',obscure: true,textInputType: TextInputType.text,),

            ],
          ),
        ),
      ),
    ));
  }
}
