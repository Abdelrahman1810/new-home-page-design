import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            backgroundimage(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico-Regular',
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Container(
                      width: 209,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(100, 0, 100, 1),
                              Color.fromRGBO(100, 0, 179, 1),
                              Color.fromRGBO(204, 0, 204, 1),
                              Color.fromRGBO(255, 0, 255, 1)
                            ]),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Log in    ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pacifico-Regular',
                                ),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 40,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      width: 209,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(100, 0, 100, 1),
                              Color.fromRGBO(100, 0, 179, 1),
                              Color.fromRGBO(204, 0, 204, 1),
                              Color.fromRGBO(255, 0, 255, 1)
                            ]),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pacifico-Regular',
                                ),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildbackgroundimage() => Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/purple-03.jpg'),
        fit: BoxFit.cover,
      )),
    );
