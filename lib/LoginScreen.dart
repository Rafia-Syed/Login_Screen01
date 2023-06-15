import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xffFED8C3),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.68,
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        color:  Color(0xff44564A),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 22,
                        color: const Color(0xff44564A).withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      cursorColor: const Color(0xff44564A),
                      decoration: InputDecoration(
                        fillColor: const Color(0xff44564A).withOpacity(0.1),
                        filled: true,
                        hintText: "abc@gmail.com",
                        prefixIcon: const Icon(
                          Icons.email,
                          color:   Color(0xff44564A),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 22,
                        color: const Color(0xff44564A).withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      cursorColor: const Color(0xff44564A),
                      decoration: InputDecoration(
                        fillColor: const Color(0xff44564A).withOpacity(0.1),
                        filled: true,
                        hintText: "***********",
                        prefixIcon: const Icon(
                          Icons.lock,
                          color:  Color(0xff44564A),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: SizedBox(
                        height: 56,
                        width: size.width * 0.7,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff44564A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {}, 
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage(('assets/plants.png')),),
            ),
          ],
        ),
      ),
    );
  }
}
