import 'package:flutter/material.dart';

import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final email = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// backgroundColor: Color.fromRGBO(58, 0, 95, .81),
      backgroundColor: const Color.fromRGBO(10, 10, 10, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/purple-03.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  head(),
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Log in with one of the following options',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        buildgoogleicon(),
                        const SizedBox(width: 30),
                        buildappleicon(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontFamily: 'Satisfy-Regular',
                            ),
                          ),
                        ),
                        buildemail(),
                        const SizedBox(height: 25),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontFamily: 'Satisfy-Regular',
                            ),
                          ),
                        ),
                        buildpass(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10, bottom: 10),
                    child: buldbuttonlogin(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget head() => Padding(
        padding: const EdgeInsets.only(
          bottom: 50.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(128, 0, 128, 1),
                      Color.fromRGBO(179, 0, 179, 1),
                      Color.fromRGBO(204, 0, 204, .8)
                    ]),
              ),
            ),
            const Text(
              'App_Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: 'Pacifico-Regular',
                fontSize: 55,
              ),
            ),
          ],
        ),
      );

  Widget buildgoogleicon() => Expanded(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.5,
              color: const Color.fromRGBO(52, 52, 52, 1),
            ),
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(30, 30, 30, .51),
          ),
          child: MaterialButton(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            onPressed: () {},
            child: const Image(
              image: AssetImage('assets/white-google-logo.png'),
              width: 30,
              height: 30,
            ),
          ),
        ),
      );

  Widget buildappleicon() => Expanded(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.5,
              color: const Color.fromRGBO(52, 52, 52, 1),
            ),
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(30, 30, 30, .51),
          ),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.apple,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      );

  Widget buildemail() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: email,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2.5,
              color: Color.fromRGBO(52, 52, 52, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: GradientOutlineInputBorder(
            width: 3.0,
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(128, 0, 128, 1),
                  Color.fromRGBO(179, 0, 179, 1),
                  Color.fromRGBO(204, 0, 204, .8)
                ]),
          ),
          prefixIcon: const Icon(Icons.email_rounded, color: Colors.white),
          filled: true,
          fillColor: const Color.fromRGBO(30, 30, 30, .51),
        ),
      );

  Widget buildpass() => TextFormField(
        keyboardType: TextInputType.visiblePassword,
        style: const TextStyle(color: Colors.white),
        controller: pass,
        obscureText: true,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2.5,
              color: Color.fromRGBO(52, 52, 52, 1),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: GradientOutlineInputBorder(
            width: 3.0,
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(128, 0, 128, 1),
                  Color.fromRGBO(179, 0, 179, 1),
                  Color.fromRGBO(204, 0, 204, .8)
                ]),
          ),
          prefixIcon: const Icon(Icons.lock, color: Colors.white),
          filled: true,
          fillColor: const Color.fromRGBO(30, 30, 30, .51),
        ),
      );

  Widget buldbuttonlogin() => Container(
        width: 250,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(128, 0, 128, 1),
                Color.fromRGBO(179, 0, 179, 1),
                Color.fromRGBO(204, 0, 204, .8)
              ]),
        ),
        child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          splashColor: const Color.fromRGBO(30, 30, 30, .51),
          child: const Text(
            'Log in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Satisfy-Regular',
            ),
          ),
        ),
      );
}
