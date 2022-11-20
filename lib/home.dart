import 'package:flutter/material.dart';
import 'package:week_9_2/main.dart';
import 'userPreferences.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  String login = " ";
  String password = " ";
  bool isChecked = false;

  @override
  void initState() {
    super.initState();

    login = UserPreferences().getUsername() ?? " ";
    password = UserPreferences().getPassword() ?? " ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 11, 80, 13),
          centerTitle: true,
          title: const Text("Привет!")),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
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
                          icon: const Icon(Icons.person),
                          labelText: 'Логин',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          )),
                      onChanged: (login) => setState(() => this.login = login),
                    ),
                    SizedBox(height: 1.h),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return 'Введите пароль';
                        return null;
                      },
                      initialValue: password,
                      decoration: InputDecoration(
                          icon: Icon(Icons.key),
                          labelText: 'Пароль',
                          labelStyle: TextStyle(
                            fontSize: 3.h,
                          )),
                      onChanged: (password) =>
                          setState(() => this.password = password),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    CheckboxListTile(
                      value: isChecked,
                      title: Text(
                        "Запомнить меня",
                        style: TextStyle(
                          fontSize: 2.h,
                        ),
                      ),
                      onChanged: (bool? value) async {
                        await UserPreferences().setLogin(login);
                        await UserPreferences().setPassword(password);
                        setState(() => isChecked = value!);
                      },
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 11, 80, 13))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Color color =
                                  const Color.fromARGB(255, 11, 80, 13);
                              String text;
                            } else {
                              Navigator.of(context).pushNamed("/appscreen");
                            }
                          },
                          child: Text(
                            'Войти',
                            style: TextStyle(
                              fontSize: 2.h,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1.h,
                        ),
                        ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  Color.fromARGB(255, 11, 80, 13))),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/register");
                          },
                          child: Text(
                            'Зарегистрироваться',
                            style: TextStyle(
                              fontSize: 2.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.exit_to_app_outlined),
                          tooltip: 'Выйти из системы',
                          onPressed: () async {
                            await UserPreferences().deleteLogin();
                            await UserPreferences().deletePassword();
                            setState(() {
                              login = " ";
                              password = " ";
                            });
                          },
                        ),
                        const Text(
                          'Забыть меня',
                          style:
                              TextStyle(color: Color.fromARGB(255, 11, 80, 13)),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
