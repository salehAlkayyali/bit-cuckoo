import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'Login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final maxHeight = screenSize.height;

    return Scaffold(
      body: Container(
        height: maxHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5927FE), Color(0xFF8160EF)],
            begin: Alignment.topRight,
            end: Alignment.topLeft,
          ),
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50), // Adjust the spacing as needed

              Transform.translate(
                offset: Offset(-40, 25),  // Adjust this value to control the amount of the card outside the screen
                child: FractionalTranslation(
                  translation: Offset(-0.5, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(70),
                      ),
                    ),

                      child: Image(
                        image: AssetImage('images/img.png'),
                        width: 150,
                      ),

                  ),
                ),
              ),

              SizedBox(height: 30), // Adjust the spacing as needed
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bit\nCuckoo',
                      style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Collect your bit coins',
                      style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'How Cuckoo will help?',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "\u2022",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF44E4A5),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Cuckoo will help you to buy/sell your bit coins",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\u2022",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF44E4A5),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Cuckoo will help you to set the price tracker",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "\u2022",
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF44E4A5),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Cuckoo is faster smart & Sweet",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Adjust the spacing as needed
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 80),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          child: IntlPhoneField(
                            showCountryFlag: false,
                            disableLengthCheck: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Color(0xFF44E4A5),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Adjust the spacing as needed
            ],
          ),
        ),
      ),
    );
  }
}
