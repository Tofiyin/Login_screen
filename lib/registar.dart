
import 'package:flutter/material.dart';
import 'package:login_screen/login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}
bool _isOpen = true;

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();

  final TextEditingController _password = TextEditingController();
  final TextEditingController _Fullname = TextEditingController();
  final TextEditingController _Companyname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Container(
                  color: Colors.white,
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    'assets/mood.png', fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 200,
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
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
                        height: 20,
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/fb.png',
                        height: 20,
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
                        height: 20,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Or Sign up with Email',
                style: TextStyle(fontSize: 14),
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
                  labelText: 'Email',
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
                obscureText: _isOpen,
                
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _password,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Password must be at least 6 characters long';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
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
              TextFormField(
                controller: _Fullname,
                decoration: InputDecoration(
                  labelText: 'Full name',
                  prefixIcon: const Icon(Icons.person),
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
                controller: _Companyname,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.business_center_outlined),
                  labelText: 'Company name',
                  labelStyle: const TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                }),
                color: Colors.blue,
                height: 50,
                minWidth: 360,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
