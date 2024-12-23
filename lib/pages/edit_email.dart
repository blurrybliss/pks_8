import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:practice_4/user/user_data.dart';

class EditEmailFormPage extends StatefulWidget {
  const EditEmailFormPage({Key? key}) : super(key: key);
  @override
  EditEmailFormPageState createState() => EditEmailFormPageState();
}

class EditEmailFormPageState extends State<EditEmailFormPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void updateUserEmail(String email) {
    user.email = email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Редактировать email')),
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                    width: 320,
                    child: Text(
                      "Ваш email?",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 100,
                        width: 320,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста, введите ваш email';
                            } else if (!isEmail(value)) {
                              return 'Пожалуйста, введите действительный email';
                            }
                            return null;
                          },
                          controller: emailController,
                          decoration: const InputDecoration(
                            labelText: 'Ваш email',
                          ),
                        ))),
                Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                updateUserEmail(emailController.text);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Обновлено',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )))
              ]),
        ));
  }
}
