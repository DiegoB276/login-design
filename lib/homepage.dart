import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidPassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 95,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 104, 33, 128),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Column(children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 70),
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 241, 241, 241),
                        border: Border.all(color: Colors.grey, width: 3)),
                    child: const Center(
                      child: Text(
                        "HD",
                        style: TextStyle(
                            fontSize: 90, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 50, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Usuario",
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: isHidPassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Contraseña",
                        icon: const Icon(Icons.password),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: const Icon(Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 60, right: 50),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Ingresar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50, top: 10, right: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Registrarse",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHidPassword = !isHidPassword;
    });
  }
}
