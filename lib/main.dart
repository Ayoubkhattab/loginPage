import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                child: const Text("Hello ",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.fromLTRB(30, 130, 0, 0),
                    child: const Text(
                      "There",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                    child: const Text(
                      ".",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    hoverColor: Color.fromARGB(151, 204, 245, 204),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    hintText: " Email",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 25),
                      child: Icon(
                        Icons.mail_outline,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
                //textfield number 2 for Password
                const SizedBox(height: 12),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    hoverColor: Color.fromARGB(151, 204, 245, 204),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    hintText: " Password",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 25),
                      child: Icon(Icons.lock_outline),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
                //-------------forgot password------------------
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 8,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Container(
                  height: 40,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: Icon(
                            Icons.facebook_outlined,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: Text(
                            "Log in with facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "new to spotify ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
