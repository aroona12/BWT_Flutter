import 'package:flutter/material.dart';
import 'output_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _introController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();
  bool isMuslim = false;
  String gender = 'female';
  bool notification = false;
  String countryValue = 'Select your country';
  List<String> country = [
    'Select your country',
    'Pakistan',
    'England',
    'Germany',
    'Italy',
    'Japan'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Center(
            child: Text(
              'Task 3',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: 'Name',
                      prefixIcon: const Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      enabledBorder: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      hintText: 'Mobile No',
                      labelText: 'Mobile No',
                      prefixIcon: const Icon(Icons.phone),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(color: Colors.black),
                      enabledBorder: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your mobile phone no';
                      }
                      if (value.length != 12) {
                        return 'Enter 12 digit phone no';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email_sharp),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(color: Colors.black),
                      enabledBorder: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _introController,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Introduction',
                      hintText: 'Write something about you',
                      prefixIcon: const Icon(Icons.info_outline),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(color: Colors.black),
                      enabledBorder: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.visibility_off_outlined),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(color: Colors.black),
                      enabledBorder: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    controller: _urlController,
                    keyboardType: TextInputType.url,
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'URL',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintText: 'linkedIn , Github',
                      prefixIcon: Icon(Icons.link),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      const Text('Are you a Muslim?'),
                      Checkbox(
                        activeColor: Colors.grey,
                        value: isMuslim,
                        onChanged: (bool? value) {
                          setState(() {
                            isMuslim = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        focusColor: Colors.grey,
                        value: countryValue,
                        items: country
                            .map((String e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              countryValue = value;
                            });
                          }
                        },
                        style: const TextStyle(color: Colors.black),
                        dropdownColor: Colors.grey,
                        underline: Container(
                          height: 2,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Radio(
                      value: 'female',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    const Text('female'),
                    Radio(
                        value: 'male',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        }),
                    const Text('male'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Text(
                          'Would you like to receive notifications from us?'),
                      Switch(
                          value: notification,
                          onChanged: (value) {
                            setState(() {
                              notification = value;
                            });
                          })
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 15),
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OutputScreen(
                                name: _nameController.text,
                                phone: _phoneController.text,
                                email: _emailController.text,
                                intro: _introController.text,
                                password: _passwordController.text,
                                url: _urlController.text,
                                isMuslim: isMuslim,
                                gender: gender,
                                notification: notification,
                                country: countryValue,
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        child: const Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
