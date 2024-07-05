import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String intro;
  final String password;
  final String url;
  final bool isMuslim;
  final String gender;
  final bool notification;
  final String country;

  const OutputScreen({
    required this.name,
    required this.phone,
    required this.email,
    required this.intro,
    required this.password,
    required this.url,
    required this.isMuslim,
    required this.gender,
    required this.notification,
    required this.country,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: const Text('Output Screen',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
        body: Column(
           children: [
             SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: TextEditingController(text: 'Name: $name'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: '$phone'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: ' $email'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: ' $intro'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: ' $password'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: ' $url'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: '$isMuslim'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: ' $gender'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: '$notification'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: TextEditingController(text: '$country'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
             ),
           ],
         ),
    );
  }
}
