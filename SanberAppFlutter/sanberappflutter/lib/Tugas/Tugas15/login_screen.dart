import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanberappflutter/Tugas/Tugas15/config/dio_http.dart';
import 'package:sanberappflutter/Tugas/Tugas15/main_app.dart';
import 'package:sanberappflutter/Tugas/Tugas15/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  var _passwordVisible = false;
  final _fromKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String? email;
  late String? password;
  late bool _isloading = false;

  Future<dynamic> _login() async {
    var data = {"email": email, "password": password};
    try {
      setState(() {
        _isloading = true;
      });
      var response = await DioHttp.request
          .post("https://demoapi-hilmy.sanbercloud.com/api/login", data: data);
      print(response.data);
      setState(() {
        _isloading = false;
      });
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("user-token", response.data['token']);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainApp()),
      );
    } on DioError catch (dioError) {
      var message = "";
      switch (dioError.response!.statusCode) {
        case 400:
          setState(() {
            _isloading = false;
          });
          print(dioError.response!.data["massage"].toString());
          message = dioError.response!.data["massage"].toString();
          break;
        case 404:
          setState(() {
            _isloading = false;
          });
          message = "Server Not Found";
          break;
        default:
          setState(() {
            _isloading = false;
          });
          message = "Server Error";
      }
      final snackBar = SnackBar(
        content: const Text('invalid username dan password'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: LoadingOverlay(
          isLoading: _isloading,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset("assets/img/logo.png"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "JobFinder",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff475BD7)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Explore Your Dream Jobs",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff475BD7))),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: TextFormField(
                          validator: (String? emailValue) {
                            if (emailValue!.isEmpty) {
                              return "enter email text";
                            }
                            email = emailValue;
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Masukkan Email Password anda",
                            hintStyle: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: TextFormField(
                          obscureText: !_passwordVisible,
                          validator: (String? passwordValue) {
                            if (passwordValue!.isEmpty) {
                              return "enter password text";
                            }
                            password = passwordValue;
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Masukkan  Password Anda",
                            hintStyle: TextStyle(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text("Belum Punya akun?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: Text("Daftar"),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text(
                          "Masuk",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_fromKey.currentState!.validate()) {
                            _login();
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
