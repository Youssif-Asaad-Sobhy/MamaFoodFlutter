import 'package:flutter/material.dart';
// import 'package:validators/validators.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool vali = true;
  var show = Icons.visibility;
  var hide = Icons.visibility_off;
  var icons = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(int.parse('0xFF34536A')),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: const Center(
                      child: Text(
                    "Let's get you signed in!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ))),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        // alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width *
                                        (2 / 3) -
                                    16,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                    textAlign: TextAlign.left,
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromRGBO(
                                                  227, 227, 227, 1))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<
                                          Color>(
                                      const Color.fromRGBO(230, 87, 56, 1))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(243, 243, 243, 1),
                      ),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        // validator: (val) =>
                        //     !isEmail(val!) ? "Invalid Email" : null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(243, 243, 243, 1),
                      ),
                      child: SizedBox(
                        height: 36,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                alignment: Alignment.centerRight,
                                icon: Icon(icons),
                                onPressed: () {
                                  setState(() {
                                    vali = !vali;
                                    vali == false ? icons = show : icons = hide;
                                  });
                                },
                              )),
                          obscureText: vali,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style:
                              TextStyle(color: Color.fromRGBO(230, 87, 56, 1)),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromRGBO(41, 52, 65, 1))),
                            onPressed: () {},
                            child: Text('Login',
                                style: TextStyle(color: Colors.white)))),
                    SizedBox(
                      height: 40,
                    ),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Divider(
                    //         color: Color.fromRGBO(230, 87, 56, 1),
                    //         height: 36,
                    //       ),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 8),
                    //       child: Text(
                    //         'Or login with',
                    //         style: TextStyle(
                    //             color: Color.fromRGBO(41, 52, 65, 1),
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w700),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Divider(
                    //         color: Color.fromRGBO(230, 87, 56, 1),
                    //         height: 36,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     TextButton(
                    //         onPressed: () {},
                    //         style: ButtonStyle(
                    //           shape: MaterialStateProperty.all<OutlinedBorder>(
                    //             RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //           ),
                    //         ),
                    //         child: Icon(Icons.facebook_outlined)),
                    //     TextButton(
                    //         onPressed: () {},
                    //         style: ButtonStyle(
                    //           shape: MaterialStateProperty.all<OutlinedBorder>(
                    //             RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(10),
                    //             ),
                    //           ),
                    //         ),
                    //         child: Icon(Icons.facebook_outlined)),
                    //   ],
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
