import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_store/presentation/pages/join_us/join_us.dart';
import 'package:nike_store/presentation/pages/login_form/login_form.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFdaedec),
        ),
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/nike_logo_lemon.png",
            width: 250,
            height: 250,
          ),
          const Text(
            'Whereever you are.',
            style: TextStyle(
              //color: Color(0xFF979797),
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: .8,
              height: 1,
            ),
          ),
          const Text(
            "Wherever you want to go.",
            style: TextStyle(
                //color: Color(0xFF979797),
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: .8,
                height: 1.5),
          ),
          const Text(
            "Come run with us.",
            style: TextStyle(
              //color: Color(0xFF979797),
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: .8,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          TextButton(
            style: TextButton.styleFrom(minimumSize: const Size(300, 5)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginForm()));
            },
            child: const Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const JoinUs()));
            },
            child: const Text(
              "JOIN NOW",
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1),
            ),
            style: OutlinedButton.styleFrom(
                primary: Colors.black45,
                backgroundColor: const Color(0xFFb3e8e2),
                padding: const EdgeInsets.all(25),
                elevation: 7,
                minimumSize: const Size(300, 10)),
          ),
        ]),
      ),
    );
  }
}
