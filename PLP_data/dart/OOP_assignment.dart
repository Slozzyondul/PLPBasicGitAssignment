// Define a Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor for Student
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print("student:");
    print("name: $name");
    print("age: $age");
    print("grade Level: $gradeLevel");
  }
}

// Define a Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor for Teacher
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print("teacher:");
    print("name: $name");
    print("age: $age");
    print("subject: $subject");
  }
}

// Define a School class
class School {
  // Method to create student and teacher objects and print their information
  void printSchoolInfo() {
    // Create a student
    var student = Student("solo", 27, 12);

    // Create a teacher
    var teacher = Teacher("Mr. Solo", 27, "Self studies");

    // Print information about the student
    student.printInfo();

    // Print information about the teacher
    teacher.printInfo();
  }
}

void main() {
  // Create a School object
  var school = School();

  // Call the method to print school information
  school.printSchoolInfo();
}
