import 'package:flutter/material.dart';
import 'dart:async';
void main() async {
  // Create instances of the subclasses
  University numl = NUML('Languages and Linguistics', 'English Department');
  University iqra = Iqra('Business Faculty', 'Management Department');
  University iiui = IIUI('Islamic Faculty', 'Social Sciences Department');
  numl.displayDetails();
  await numl.simulateAsyncOperation(); // Await an async operation
  iqra.displayDetails();
  await iqra.simulateAsyncOperation(); // Await an async operation
  iiui.displayDetails();
  await iiui.simulateAsyncOperation(); // Await an async operation
  // Exception handling for fees
  try {
    numl.fees();
    iqra.fees();
    iiui.fees();
  } catch (e) {
    print('Error: $e');
  }
  var stream = numl.countStream(5);
  await for (var value in stream) {
    print('Stream value: $value');
  }
}
abstract class University {
  String name;
  String faculty;
  String department;
  University(this.name, this.faculty, this.department);
  // Abstract method for fees
  void fees();
  Future<void> simulateAsyncOperation() async {
    print('Simulating an async operation...');
    await Future.delayed(Duration(seconds: 2));
    print('Async operation completed.');
  }
  Stream<int> countStream(int count) async* {
    for (int i = 1; i <= count; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }
  void displayDetails() {
    print('University: $name');
    print('Faculty: $faculty');
    print('Department: $department');
  }
}
class NUML extends University {
  NUML(String faculty, String department)
      : super("NUML", faculty, department);

  @override
  void fees() {
    try {
      var fee = 25000 + 3000;
      print('Per semester fee for NUML university is \$fee');
    } catch (e) {
      print('Error calculating fees: $e');
    }
  }
}

class Iqra extends University {
  Iqra(String faculty, String department)
      : super("Iqra University", faculty, department);

  @override
  void displayDetails() {
    super.displayDetails();
    print("Specialty: Business and Management");
  }

  @override
  void fees() {
    try {
      var fee = 25000 + 4000;
      print('Per semester fee for Iqra university is \$fee');
    } catch (e) {
      print('Error calculating fees: $e');
    }
  }
}

class IIUI extends University {
  IIUI(String faculty, String department)
      : super("IIUI", faculty, department);

  @override
  void displayDetails() {
    super.displayDetails();
    print("Specialty: Islamic Studies and Social Sciences");
  }
  @override
  void fees() {
    try {
      var fee = 25000 + 3000;
      print('Per semester fee for NUML university is \$${fee}');
    } catch (e) {
      print('Error calculating fees: $e');
    }
  }
}
