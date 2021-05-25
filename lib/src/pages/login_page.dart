import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [_crearFondo(context), _loginForm(context)],
    ));
  }

  _crearFondo(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final purpleBackground = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0),
      ])),
    );

    final circle = Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );

    return Stack(
      children: [
        purpleBackground,
        Positioned(
          child: circle,
          top: 90,
          left: 30,
        ),
        Positioned(
          child: circle,
          top: -40,
          right: -30,
        ),
        Positioned(
          child: circle,
          bottom: -50,
          right: -10,
        ),
        Positioned(
          child: circle,
          bottom: 120,
          right: 20,
        ),
        Positioned(
          child: circle,
          bottom: -50,
          left: -20,
        ),
        Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Icon(
                Icons.person_pin_circle,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        )
      ],
    );
  }

  _loginForm(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 180,
          )),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(vertical: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      offset: Offset(0, 5),
                      spreadRadius: 3.5)
                ]),
            child: Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 60,
                ),
                _crearEmail(),
                SizedBox(
                  height: 30,
                ),
                _crearPassword(),
                SizedBox(
                  height: 30,
                ),
                _crearBoton()
              ],
            ),
          ),
          Text('Forgot password?'),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(
              Icons.alternate_email,
              color: Colors.deepPurple,
            ),
            hintText: 'example@mail.com',
            labelText: 'Email'),
      ),
    );
  }

  _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock_outline,
              color: Colors.deepPurple,
            ),
            labelText: 'Password'),
      ),
    );
  }

  _crearBoton() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          elevation: 0.0,
          primary: Colors.deepPurple,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
          child: Text('Login'),
        ));
  }
}
