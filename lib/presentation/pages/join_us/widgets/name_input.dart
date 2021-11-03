import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NameInput extends StatelessWidget {
  final String name;

  final Function(String) onNameChange;

  const NameInput({Key? key, required this.name, required this.onNameChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.black87,
              ),
        ),
        child: TextFormField(
          maxLength: 40,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(r'[a-zA-Z]+|\s'),
            )
          ],
          onChanged: (value) {
            onNameChange(value);
          },
          validator: (value) {
             if (value!.isEmpty) {
                return 'Please enter some text';
              }            
            return null;
          },
          decoration: const InputDecoration(
              fillColor: Colors.white,
              filled: true,
              counterText: "",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(184, 194, 194, 255),
                      width: 3.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(184, 194, 194, 255),
                      width: 3.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              prefixIcon: Icon(
                Icons.person,
              ),
              hintText: 'Nombre',
              hintStyle: TextStyle(fontSize: 14, color: Colors.black38)),
        ),
      ),
    );
  }
}
