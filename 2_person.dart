class Person {
  String name ;
  String address ;

  Person(this.name, this.address);

  @override
  String toString() {
    // TODO: implement toString
    return "name $name , address $address";
  }
}

class Student extends Person{
  int numCourses ;
  List<String> courses ;
  List<int> grades;

  Student(this.numCourses, this.grades, this.courses, String name, String address) : super(name, address);

  bool addCourseGrade(String course , int grade){
    if(courses.contains(course)){
      return false;
    }
    courses.add(course);
    grades.add(grade);
    return true;
  }

   double getAvg(){
    if(grades.isEmpty){
      return 0;
    }

    int sum = 0;
    for(int i = 0; i < grades.length ; i++){
      sum += grades[i];
    }
    return sum / grades.length;
  }
  void printGrades(){
    for(int grade in grades){
      print(grade);
    }
  }
}

class Teacher extends Person{
  int numCourses ;
  List<String> courses ;

  Teacher(this.numCourses, this.courses, String name, String address) : super(name, address);

  bool addCourse(String course ){
    if(courses.contains(course)){
      return false;
    }
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course ){
    if(courses.contains(course)){
      courses.remove(course);
      numCourses--;

      return true;
    }
    return false;
  }

  @override
  String toString() {
    // TODO: implement toString
    return  'Teacher ${super.toString()}, numCourse $numCourses';
  }
}



void main() {
  //  Student
  print("--- Student Test ---");
  Student student = Student(0, [], [], "Khaled", "Sanaa");
  print(student);

  student.addCourseGrade("Math", 85);
  student.addCourseGrade("Physics", 90);

  print("Average Grade: ${student.getAvg()}");
  print("Grades list:");
  student.printGrades();

  print("================================================");

  print("\n Teacher Test");
  // Teacher
  Teacher teacher = Teacher(0, [], "Dr. Mohamed", "Alexandria");
  print(teacher);

  print("Add Math: ${teacher.addCourse("Math")}");
  print("Add Math again: ${teacher.addCourse("Math")}");
  print("Add Physics: ${teacher.addCourse("Physics")}");

  print("Current Teacher info: $teacher");

  print("Remove Chemistry: ${teacher.removeCourse("Chemistry")}");
  print("Remove Math: ${teacher.removeCourse("Math")}");

  print("Final Teacher info: $teacher");
}