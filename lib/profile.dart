import 'package:flutter/material.dart';
import 'userPreferences.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  String login = " ";
  String username = " ";
  String userlastname = " ";
  String email = " ";
  String phone = " ";
  String password = " ";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 80, 13),
          centerTitle: true,
          title: const Text("Мой профиль"),
        ),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              Column(children: [
                Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите логин';
                          return null;
                        },
                        initialValue: login,
                        decoration: InputDecoration(
                          labelText: 'Логин',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (login) =>
                            setState(() => this.login = login),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите имя';
                          return null;
                        },
                        initialValue: username,
                        decoration: InputDecoration(
                          labelText: 'Имя',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (username) =>
                            setState(() => this.username = username),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите фамилию';
                          return null;
                        },
                        initialValue: userlastname,
                        decoration: InputDecoration(
                          labelText: 'Фамилия',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (userlastname) =>
                            setState(() => this.userlastname = userlastname),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите e-mail';
                          return null;
                        },
                        initialValue: login,
                        decoration: InputDecoration(
                          labelText: 'e-mail',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (email) =>
                            setState(() => this.email = email),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите номер телефона';
                          return null;
                        },
                        initialValue: login,
                        decoration: InputDecoration(
                          labelText: 'Телефон',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (phone) =>
                            setState(() => this.phone = phone),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите пароль';
                          return null;
                        },
                        initialValue: login,
                        decoration: InputDecoration(
                          labelText: 'Пароль',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          ),
                        ),
                        onChanged: (password) =>
                            setState(() => this.password = password),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 11, 80, 13))),
                        onPressed: () async {
                          await UserPreferences().setLogin(login);
                          await UserPreferences().setPassword(username);
                          await UserPreferences().setPassword(userlastname);
                          await UserPreferences().setPassword(email);
                          await UserPreferences().setPassword(phone);
                          await UserPreferences().setPassword(password);
                          Navigator.of(context).pushNamed("/appscreen");
                        },
                        child: Text(
                          'Сохранить',
                          style: TextStyle(
                            fontSize: 2.h,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ]),
            ])));
  }
}
