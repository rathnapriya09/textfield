import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var textfield = TextEditingController();
  var numberfield = TextEditingController();
  var contact = [
    'Abhi',
    'Gowtham',
    'Pradeep',
    'Jeffy',
    'Dharshini',
    'Priya',
  ];
  var number = [
    '9807657890',
    '6789509876',
    '8790768909',
    '7689075467',
    '7689076578',
    '6589670987',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        leadingWidth: 10,
        toolbarHeight: 110,
        backgroundColor: Colors.brown,
        title: Text(
          'Contact',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.accessibility),
        actions: [
          IconButton(
              padding: EdgeInsets.all(15),
              onPressed: () {
                setState(() {
                  contact.insert(0, textfield.text);
                  number.insert(0, numberfield.text);
                });
              },
              icon: Icon(Icons.add)),
          Icon(Icons.search)
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 12,
        ),
        TextField(
          maxLength: 25,
          controller: textfield,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
            ),
            hintText: 'Enter a Name',
          ),
        ),
        SizedBox(
          height: 12,
        ),
        TextField(
          maxLength: 10,
          controller: numberfield,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
            ),
            hintText: 'Enter a Number',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: contact.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  title: Text(contact[index]),
                  subtitle: Text(number[index]),
                  trailing: Icon(Icons.sim_card),
                );
              }),
        ),
      ]),
    );
  }
}
