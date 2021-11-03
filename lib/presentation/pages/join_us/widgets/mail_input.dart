import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MailInput extends StatelessWidget {
  final String mail;
  final Function(String) onMailChange;

  const MailInput({
    Key? key, required this.mail, required this.onMailChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.black87,
              ),
        ),
        child: TextFormField(
          maxLength: 40,
          inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          onChanged: (value) {
            onMailChange(value);
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Ingrese un correo válido';
            }
            if (!StringAdm.validateEmail(value)) {
              return 'Ingrese un correo válido';
            }
          },
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            counterText: "",
            contentPadding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(184, 194, 194, 255),
                  width: 3.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(184, 194, 194, 255),
                  width: 3.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            prefixIcon: Icon(
              Icons.mail_sharp,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              fontSize: 14.0,
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}


class StringAdm {
  static bool validateEmail(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    return (!regex.hasMatch(email)) ? false : true;
  }

  static bool validatePasswords(String pass, String pass2) {
    if (pass.compareTo(pass2) == 0) return true;
    return false;
  }
}
