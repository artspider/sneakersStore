import 'package:flutter/material.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/join_buton.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/mail_input.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/name_input.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/password_input.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/password_verify_input.dart';
import 'package:nike_store/presentation/pages/join_us/widgets/phone_input.dart';

class JoinUs extends StatefulWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  _JoinUsState createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  String mail = "";
  String phone = "";
  String password = "";
  String verifyPassword = "";

  @override
  Widget build(BuildContext context) {
    var maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/nike_logo_lemon.png",
          width: 30,
          height: 30,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: maxHeight,
          color: const Color(0xFFdaedec),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Name Input
                  NameInput(
                    name: name,
                    onNameChange: (String val) => setState(() {
                      name = val;
                      print("cambio el nombre");
                    }),
                  ),
                  MailInput(
                    mail: mail,
                    onMailChange: (String val) => setState(() {
                      mail = val;
                    }),
                  ),
                  PhoneInput(
                    phone: phone,
                    onPhoneChange: (String val) => setState(() {
                      phone = val;
                    }),
                  ),
                  PasswordInput(
                    password: password,
                    onPasswordChange: (String val) => setState(() {
                      password = val;
                    }),
                  ),
                  const PasswordVerifyInput(),
                  JoinButton(
                    name: name,
                    mail: mail,
                    phone: phone,
                    password: password,
                    formKey: _formKey,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
