import 'package:flutter/material.dart';
class signInFarmer extends StatefulWidget {
  const signInFarmer({super.key});

  @override
  State<signInFarmer> createState() => _signInFarmerState();
}

class _signInFarmerState extends State<signInFarmer> {
  final getText = TextEditingController();
  late String getEmail,getPass;
  late String email;
  late String pass;
  void setText() {
    setState(() {
       email = getEmail;
       pass = getPass;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign in to FarmLink as Farmer'),
              TextField(
                onChanged: (value) => getEmail = value,
                decoration: InputDecoration(
                  hintText: 'Enter email',
                ),
              ),
              TextField(
                onChanged: (value) => getPass = value,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: setText, child: Text('Sign Up!')),
                  ElevatedButton(onPressed: setText, child: Text('Login')),
                ],
              ),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back!')
            ),

            ],
          ),
        )
    );
  }
}
