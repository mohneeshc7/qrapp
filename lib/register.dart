import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qrapp/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _name = TextEditingController();
  final _nameController = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  void register() async {
     // print(_name.text);
     // print(_nameController.text);
     // print(_emailcontroller.text);
     // print(_passingcontroller.text);

    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var respose = await http.post(uri,
        headers: <String, String>{
          'content-Type': 'application/json;charset=UTF-8',
        },
        body: jsonEncode({
          'name': _name.text,
          'email':_emailcontroller.text,
          'rollno':_nameController.text,
          'password':_passwordcontroller.text,
        }));
    var data = jsonDecode(respose.body);
    print(data["messagi"]);
    if(respose.statusCode ==200){
      Navigator.push(context,MaterialPageRoute(builder: (context) =>Login()));
    }else{
      ScaffoldMessenger.of (context).showSnackBar(SnackBar(content:Text('uod')));

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registration',
                style: TextStyle(color: Colors.white, fontSize: 28)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter of birth',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _emailcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter you email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  hintText: 'Enter you pas',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 19)),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text('Register',
                        style: TextStyle(color: Colors.white, fontSize: 19)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
