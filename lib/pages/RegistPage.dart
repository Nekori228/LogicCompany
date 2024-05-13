import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainPage.dart';

class RegistPage extends StatefulWidget {
  const RegistPage({Key? key}) : super(key: key);

  @override
  State<RegistPage> createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  TextEditingController _textController = TextEditingController();

  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF110F18),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('assets/icons/icon.jpg'),
              Text(
                'Регистрация',
                style: GoogleFonts.roboto(
                    color: Color(0xFFFFFFFF),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Логин',
                      style: GoogleFonts.roboto(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF574893),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Почта',
                      style: GoogleFonts.roboto(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF574893),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                ),
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Пароль',
                      style: GoogleFonts.roboto(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              TextField(
                controller: _textController,
                obscureText: _isObscured,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF574893),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(11),
                    ),
                    borderSide: BorderSide(
                      color: Colors.green.withOpacity(0),
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFFFFFFFF),
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  backgroundColor: Color(0xFF301A89),
                ),
                child: SizedBox(
                  height: 55,
                  child: Center(
                    child: SizedBox(
                      child: Text(
                        'Зарегистрироваться',
                        style: GoogleFonts.roboto(
                          color: Color(0xFFFFFFFF),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
