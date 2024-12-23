import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:practice_4/user/user_data.dart';

class EditPhoneFormPage extends StatefulWidget {
  const EditPhoneFormPage({Key? key}) : super(key: key);
  @override
  EditPhoneFormPageState createState() => EditPhoneFormPageState();
}

class EditPhoneFormPageState extends State<EditPhoneFormPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void updateUserPhone(String phone) {
    user.phone = phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Редактировать номер телефона')),
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                    width: 320,
                    child: Text(
                      "Какой у вас номер телефона?",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 100,
                        width: 320,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста, введите ваш номер телефона';
                            } else if (isAlpha(value)) {
                              return 'Только цифры, пожалуйста';
                            } else if (value.length < 10) {
                              return 'Пожалуйста, введите действительный номер телефона';
                            }
                            return null;
                          },
                          controller: phoneController,
                          decoration: const InputDecoration(
                            labelText: 'Ваш номер телефона',
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
                              if (_formKey.currentState!.validate() &&
                                  isNumeric(phoneController.text)) {
                                updateUserPhone(phoneController.text);
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
