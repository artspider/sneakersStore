import 'package:flutter/material.dart';

class JoinButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String name;
  final String mail;
  final String phone;
  final String password;

  const JoinButton({
    Key? key,
    required this.formKey,
    required this.name,
    required this.mail,
    required this.phone,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(top: 20, bottom: 20)),
          onPressed: () {
            if (!formKey.currentState!.validate()) {
              return;
            }
            print('todo ok');
            print('el nombre es: ${name}');
            print('el correo es: ${mail}');
            print('el telefono es: ${phone}');
            print('el password es: ${password}');
          },
          child: const Text("Crear cuenta")),
    );
  }
}
