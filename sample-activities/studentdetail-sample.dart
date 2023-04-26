import 'dart:io';

void main() {
    Map<String, dynamic> student = {};

    print("Please enter student information:");
    print("Student Name: ");
    student['name'] = stdin.readLineSync();

    print("Student Number: ");
    student['number'] = stdin.readLineSync();

    print("Course: ");
    student['course'] = stdin.readLineSync();

    print("Year: ");
    student['year'] = stdin.readLineSync();

    print("Enrolled courses (comma separated): ");
    student['courses'] = stdin.readLineSync().split(',').toList();

    // print summary of student information
    print("\nStudent Summary:");
    print("Name: ${student['name']}");
    print("Number: ${student['number']}");
    print("Course: ${student['course']}");
    print("Year: ${student['year']}");
    print("Enrolled Courses: ${student['courses']}");
}