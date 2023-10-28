import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
  body: UsersList(),
  appBar: AppBar(title: Text("IS-51")),)
  ));
}

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final List<String> users = [
    "Гильметдинов М",
    "Ганеев В",
    "Теплякова А",
    "Пилипенко Д",
    "Киселёв Г",
    "Гиндулина Р",
  ];
  final List<String> authors = ["Гильметдинов М", "Ганеев В", "Киселёв Г"];
  @override
  Widget build(BuildContext context)  {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        if (authors.contains(users[index])) {
          return Text(users[index],
            style: TextStyle(color: Color.fromARGB(255, 146, 14, 58)));
        }
        return Text(users[index]);
      }
    );
  }
}