import 'package:flutter/material.dart';
import 'package:login_screen/dasboard.dart';
import 'package:login_screen/registar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool _isOpen = true;

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login Screen'),
      //   centerTitle: true,
      //   elevation: 0,

      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20)),
              Image.asset(
                'assets/welcome.png',
                width: 400,
                height: 400,
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(
                  right: 280,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _email,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Email must be at least 6 characters long';
                  } else if (!value.contains('@')) {
                    return 'Invalid email address';
                  } else if (!value.contains('.')) {
                    return 'Invalid email address';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.alternate_email),
                  labelText: 'Email ID',
                  labelStyle: const TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _password,
                obscureText: _isOpen,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Password must be at least 6 characters long';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffix: const Text('Forgot ?'),
                  labelText: 'Password',
                  labelStyle: const TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    debugPrint(_password.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dashbaord(
                                  email: _email.text,
                                  password: _password.text,
                                )));
                  }
                },
                color: Colors.blue,
                height: 50,
                minWidth: 360,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Or, login with....',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/ggl.png',
                        height: 15,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                          width: 2,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Image.asset(
                        'assets/fb.png',
                        height: 16,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/app.png',
                        height: 16,
                      )),
                ],
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New to iThickLogistics?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
