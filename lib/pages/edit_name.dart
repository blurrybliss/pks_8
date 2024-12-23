import 'package:flutter/material.dart';
import 'package:practice_4/user/user_data.dart';

class EditNameFormPage extends StatefulWidget {
  const EditNameFormPage({Key? key}) : super(key: key);
  @override
  _EditNameFormPageState createState() => _EditNameFormPageState();
}

class _EditNameFormPageState extends State<EditNameFormPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void updateUserName(String name) {
    user.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Редактировать имя')),
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                    width: 320,
                    child: Text(
                      "Ваше имя?",
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
                              return 'Пожалуйста, введите ваше имя';
                            }
                            return null;
                          },
                          controller: nameController,
                          decoration: const InputDecoration(
                            labelText: 'Ваше имя',
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
                                updateUserName(nameController.text);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Сохранить',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )))
              ]),
        ));
  }
}
