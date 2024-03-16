import 'package:flutter/material.dart';
import 'package:usurtapp/screens/MyUniv.dart';
import 'package:usurtapp/screens/courses.dart';
import 'package:usurtapp/screens/info_menu.dart';
import 'package:usurtapp/screens/repository.dart';
import 'package:usurtapp/screens/society.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Мое учереждение'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => InfoMenu()));
                },
              ),
            ],
          ),
        )),
        body: ListView(children: [
          SizedBox(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 158, 15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 15, 158, 15)),
              ),
              child: Text(
                'Расписание',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(10),
              // border:
              //     Border.all(color: const Color.fromARGB(255, 15, 158, 15)),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(children: [
                    Expanded(flex: 4, child: Text('123')),
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Color.fromARGB(255, 15, 158, 15),
                );
              },
            ),
          ),
          SizedBox(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 158, 15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 15, 158, 15)),
              ),
              child: Text(
                'Мои объявления',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromARGB(255, 15, 158, 15)),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(children: [
                    Expanded(flex: 4, child: Text('123')),
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Color.fromARGB(255, 15, 158, 15),
                );
              },
            ),
          ),
          SizedBox(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 158, 15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromARGB(255, 15, 158, 15)),
              ),
              child: Text(
                'ЭИОС',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromARGB(255, 15, 158, 15)),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(children: [
                    Expanded(flex: 4, child: Text('123')),
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Color.fromARGB(255, 15, 158, 15),
                );
              },
            ),
          ),
        ]));
  }
}
