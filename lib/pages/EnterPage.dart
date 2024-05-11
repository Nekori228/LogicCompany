import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterPage extends StatefulWidget {
  EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  bool _isObscured = true;

  bool _isButtonEnabled = false;

  bool _buttonPressed = false;

  // Флаг для отслеживания нажатия на кнопку
  void _checkInput() {
    setState(() {
      if (_emailController.text == 'clikov_ed@mail.ru' &&
          _passwordController.text == '1234567') {
        _isButtonEnabled = true;
      } else {
        _isButtonEnabled = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                'Вход',
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
                // controller: _emailController,
                onChanged: (_) => _checkInput(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF574893),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
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
                style: TextStyle(color: Color(0xFF476533)),
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
                // controller: _passwordController,
                onChanged: (_) => _checkInput(),
                obscureText: _isObscured,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF574893),
                  hintText: 'Введите текст',
                  hintStyle: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
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
                      color: Color(0xFF0D2100),
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
                  // setState(() {
                  //   _buttonPressed = true; // Устанавливаем флаг нажатия на кнопку
                  //   if (_isButtonEnabled) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (context) => MenuPage()),
                  //     );
                  //   }
                  // });

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MenuPage()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                  backgroundColor: Color(0xFF301A89)
                ),
                child: SizedBox(
                  height: 55,
                  child: Center(
                    child: SizedBox(
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MyOrangeText(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrangeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'Нет учётной записи?',
            style: TextStyle(color: Color(0xFFFFFFFF).withOpacity(0.6), fontSize: 14),
          ),
          TextSpan(
            text: ' Зарегистироваться',
            style: TextStyle(
                color: Color(0xFFFFFFFF).withOpacity(0.8),
                decoration: TextDecoration.underline,
                fontSize: 14),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => RegistPage()),
                // );
              },
          ),
        ],
      ),
    );
  }
}
