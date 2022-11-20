import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String login = " ";
  String username = " ";
  String userlastname = " ";
  String email = " ";
  String phone = " ";
  String password = " ";
  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 80, 13),
        centerTitle: true,
        title: Text(
          "Создать аккаунт",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: login,
                        decoration: InputDecoration(
                            labelText: 'Логин',
                            labelStyle: TextStyle(fontSize: 15.sp)),
                        onChanged: (login) =>
                            setState(() => this.login = login),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        initialValue: username,
                        decoration: InputDecoration(
                            labelText: 'Имя',
                            labelStyle: TextStyle(fontSize: 15.sp)),
                        onChanged: (username) =>
                            setState(() => this.username = username),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        initialValue: userlastname,
                        decoration: InputDecoration(
                          labelText: 'Фамилия',
                          labelStyle: TextStyle(fontSize: 15.sp),
                        ),
                        onChanged: (userlastname) =>
                            setState(() => this.userlastname = userlastname),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 11, 80, 13))),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/profile");
                        },
                        child: const Text('Сохранить'),
                      ),
                    ],
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
