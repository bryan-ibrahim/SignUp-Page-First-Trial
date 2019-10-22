import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SignupApp(),
    ));

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TopPart(),
              BottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  const TopPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;

  return Flexible(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 200,
            color: Colors.teal[500],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "You need to sign in or create an account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      flex: 3,
    );
  }
}

class BottomPart extends StatelessWidget {
  const BottomPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Flexible(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height/2,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: Column(
                children: <Widget>[
                  SignInTexts(),
                  SizedBox(height: 5),
                  EmailField(),
                  PasswordField(),
                  RepeatPasswordField(),
                  SigninButton(),
                  ForgotPassword()
                ],
              ),
            ),
          )
        ],
      ),
      flex: 6,
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: CheckboxListTile(
            value: false,
            onChanged: null,
            title: Text("Stay connected"),
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        Expanded(
          child: Text(
            "Forgot password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          flex: 2,
        )
      ],
    );
  }
}

class SigninButton extends StatelessWidget {
  const SigninButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.teal[500], borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class RepeatPasswordField extends StatelessWidget {
  const RepeatPasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Confirm your password",
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.teal[500],
            )),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Enter your password",
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.teal[500],
            )),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Enter your email",
            prefixIcon: Icon(
              Icons.email,
              color: Colors.teal[500],
            )),
      ),
    );
  }
}

class SignInTexts extends StatelessWidget {
  const SignInTexts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
            child: Text(
              "Sign in",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            flex: 3),
        Flexible(
            child: Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            flex: 3),
        Flexible(
            child: Text(
              "Reset",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            flex: 3),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }
}
