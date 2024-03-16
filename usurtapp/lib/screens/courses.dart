import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Курсы'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Название курса',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color.fromARGB(255, 15, 158, 15),),
                )
              ),
            ),
          ),
          // ListView.builder(
          //   itemCount: 5,
          //   itemBuilder: (context, i) =>ListTile(
          //     title: Text('Предмет'),
          //     subtitle: Text('Преподаватель'),
          //   )
          // ),
        ]
      ),
    );
  }
}