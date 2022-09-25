import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 185, 185),
      body: Column(
        children: [
          Container(
            height: 90,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 129, 55, 55)
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 191, 173, 173),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(34),
                    bottomRight: Radius.circular(34),
                  ),
                ),
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.purpleAccent,
                  
                ),
              )
            ],
          )
        ],
      )
    );
  }
}