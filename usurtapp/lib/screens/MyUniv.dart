import 'package:flutter/material.dart';
import 'package:usurtapp/screens/courses.dart';
import 'package:usurtapp/screens/info_menu.dart';
import 'package:usurtapp/screens/repository.dart';
import 'package:usurtapp/screens/society.dart';

class MyUniv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мое учреждение'),
      ),
      drawer: Drawer(
          child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(children: [
                Icon(
                  Icons.person,
                  size: 112,
                ),
                Text('Имя пользователя')
              ]),
            ),
            ListTile(
              title: Text('Мое учереждение'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyUniv()));
              },
            ),
            ListTile(
              title: Text('Курсы'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Courses()));
              },
            ),
            ListTile(
              title: Text('Сообщество'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Society()));
              },
            ),
            ListTile(
              title: Text('Репозиторий'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Repository()));
              },
            ),
            ListTile(
              title: Text('ИНФО'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => InfoMenu()));
              },
            ),
          ],
        ),
      )),
    );
  }
}
