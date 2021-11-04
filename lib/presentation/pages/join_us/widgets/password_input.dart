import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String password;
  final Function(String) onPasswordChange;

  const PasswordInput(
      {Key? key, required this.password, required this.onPasswordChange})
      : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isObscure = true;
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
              widget.onPasswordChange(value);
            },
            validator: (value) {
              if (value!.length < 4) {
                return 'Contraseña demasiado corto';
              }
              return null;
            },
            obscureText: isObscure,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              counterText: "",
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(184, 194, 194, 255),
                    width: 3.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(184, 194, 194, 255),
                    width: 3.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              prefixIcon: const Icon(
                Icons.lock,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end: 12.0),
                child: TextButton(
                  onPressed: () {
                    print("cambiar valor obscure");
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: const Icon(
                    Icons.remove_red_eye_outlined,
                  ),
                ),
              ),
              hintText: 'Password',
              hintStyle: const TextStyle(
                fontSize: 14.0,
                color: Colors.black38,
              ),
            ),
          ),
        ));
  }
}
