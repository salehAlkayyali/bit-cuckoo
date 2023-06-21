import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5927FF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(70),
                        right: Radius.circular(70),
                      ),
                    ),
                    child: Image(
                      image: AssetImage('images/img.png'),
                      width: 180,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bit Cuckoo',
                          style: TextStyle(fontSize: 28, color: Color(0xFF8160EF)),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'HI SIGNIN!',
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                        SizedBox(height: 30),
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: IntlPhoneField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              counterText: '',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFAF8344),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: TextField(
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.center,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: '********',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Member?',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    color: Color(0xFFAF8344),
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1.5,
                                    decorationStyle: TextDecorationStyle.solid,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/onboarding');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF8160EF),
                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 90),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started Now',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward, size: 18),
                          ],
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
