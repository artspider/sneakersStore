import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final String password;
  final Function(String) onPasswordChange;

  const PasswordInput(
      {Key? key, required this.password, required this.onPasswordChange})
      : super(key: key);

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
            onChanged: (value) {
              onPasswordChange(value);
            },
            validator: (value) {
              if (value!.length < 4) {
                return 'Contraseña demasiado corto';
              }
              return null;
            },
            obscureText: true,
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
                Icons.lock,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black38,
              ),
            ),
          ),
        ));
  }
}
