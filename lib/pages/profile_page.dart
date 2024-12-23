import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practice_4/pages/edit_phone.dart';
import 'package:practice_4/pages/edit_name.dart';
import 'package:practice_4/pages/edit_email.dart';
import 'package:practice_4/user/user_data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;

    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
          Center(
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Изменить профиль',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 187, 164, 132),
                    ),
                  ))),
          InkWell(
              onTap: () {
                // Добавим функциональность для изменения изображения, если потребуется
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.image),
                radius: 50,
              )),
          buildUserInfoDisplay(user.name, 'Имя', const EditNameFormPage()),
          buildUserInfoDisplay(user.phone, 'Телефон', const EditPhoneFormPage()),
          buildUserInfoDisplay(user.email, 'Почта', const EditEmailFormPage()),
        ],
      ),
    );
  }

  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateSecondPage(editPage);
                            },
                            child: Text(
                              getValue,
                              style: const TextStyle(fontSize: 16, height: 1.4),
                            ))),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ]))
            ],
          ));

  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
