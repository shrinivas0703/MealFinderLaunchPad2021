<<<<<<< HEAD
import "dart:io";
import "num.dart";

// class Person {
//   String name;
//   int age;
//   Person(this.name, [this.age = 18]);
//
//   void showOutput() {
//     print(name);
//     print(age);
//   }
// }
//
// class X {
//   final name; // type will be defined by inferred value
//   static const int age = 18; // final keyword can be changed with the constructor
//   // const can never be changed
//   X(this.name);
// }
//
// class Vehicle {
//   String model;
//   int year;
//
//   Vehicle(this.model, this.year) {
//     print(this.model);
//     print(this.year);
//   }
//   void showOutput() {
//     print(model);
//     print(year);
//   }
// }
// class Car extends Vehicle {
//   double price;
//   Car(String model, int year, this.price) : super(model, year);
//   // super passes model and year to the Vehicle constructor
//   void showOutput() {
//     super.showOutput();
//     print(this.price);
//   }
// }
// class Rectangle {
//   num left, top, width, height; // num is a type that can be int or double
//   Rectangle(this.left, this.top, this.width, this.height);
//   //Define two calculated properties
//   num get right => left + width;
//   set right(num value) => left = value - width;
//   num get bottom => top + height;
//   set bottom(num value) => top = value - height;
// }
// int mustBeGreaterThanZero(int val) {
//   if (val <= 0) {
//     throw Exception("Value must be greater than zero");
//   }
//   return val;
// }
// void letVerifyTheValue(var val) {
//   var valueVerification;
//
//   try {
//     valueVerification = mustBeGreaterThanZero(val);
//   } catch(e) {
//     print(e);
//   } finally {
//     if (valueVerification == null) {
//       print("Value is not accepted");
//     } else {
//       print("Value Verified: $valueVerification");
//     }
//   }
// }

main() {
  // Printing into Terminal
  //
  // var firstName = "Shrinivas";
  // String lastName = "Venkatesan";
  // print(firstName + " " + lastName);
  //
  // User Input
  //
  // stdout.writeln("What is your name: ?");
  // String? name = stdin.readLineSync();
  // print("My name is $name");
  //
  // Dynamic Variable
  //
  // dynamic weakVariable = true;
  // weakVariable = 200;
  // weakVariable = null;
  //
  // var s = r"In a raw string, not even \n gets special treatment";
  //
  //
  // Type Conversion
  //
  // var one = int.parse("1");
  // assert(one == 1);
  //
  // var onePointOne = double.parse("1.1");
  // assert(onePointOne == 1.1);
  //
  // var oneAsString = 1.toString();
  // assert(oneAsString == "1");
  //
  // var piAsString = 3.1415.toStringAsFixed(2);
  // assert(piAsString == "3.14");
  //
  // Constant Variables
  //
  // const a = 0;
  // const b = true;
  // const c = "a const string";
  //
  // print(a);
  // print(b);
  // print(c);
  //
  // print(a.runtimeType);
  // print(b.runtimeType);
  // print(c.runtimeType);
  //
  // Null-Aware Operator and Importing Classes
  //
  // var n = Num(); // class that is created
  // int? number;   // checks if number can be nullable
  //                // int? = int other than int? can check if variable is null
  //
  // number = n.num;// makes number = 10
  //
  // print(number);
  //
  // var n;
  // int number;
  // number = n?.num ?? 0; if number is null, ?? changes it to zero
  // print(number);
  //
  // int? number;
  // print(number ??= 100); since number is null, it makes it 100
  //
  // Ternary Operator
  //
  // int x = 100;
  // var result = x % 2 == 0 ? "Even" : "Odd";
  // print(result); result is even
  //
  // Type Test
  //
  // var x = 100;
  // if (x is int) {
  //   print("integer");
  // }
  //
  // Loops
  //
  // for (int i = 0; i < 10; i++) {
  //   print(i + 1);
  // }
  //
  // var numbers = [1, 2, 3];
  // for (var n in numbers) {
  //   print(n);
  // }
  //
  // var numbers = [1, 2, 3];
  // numbers.forEach((n) => {print(n)} );
  //
  // int num = 5;
  // while (num > 0) {
  //   print(num);
  //   num -= 1;
  // }
  //
  // int num = 5;
  // do {
  //   print(num);
  //   num -= 1;
  // } while (num > 0);
  //
  // continue statement
  //
  // for (var i = 0; i < 10; i++) {
  //   if (i % 2 == 0) continue;
  //   print("Odd: $i");
  // }
  //
  // Collection Types
  //
  //  List names = ["Jack", "Jill", 10, 100.1]; // List is similar to arrays
  //  var names2 = names; // shallow copy, only pointer is copied
  //                      // so if original changes new also changes
  //  names[1] = "Mark";
  //  // for deep copy: var names2 = [...names];
  //  for (var n in names2) {
  //    print(n);
  //  }
  //
  // Set
  // var halogens = {"fluorine",  "chlorine", "fluorine"};
  //
  // for (var x in halogens) {
  //    print(x); // only prints first fluorine and chlorine since set has
  //              // to be unique
  // }
  // var halogens = {};
  // print(halogens.runtimeType); //HashMap
  // var halogens = <String> {};
  // print(halogens.runtimeType); //HashSet
  //
  // Maps (similar to dictionary in Python)
  //
  // var gifts = {
  //    //Key:    Value
  //    1: "partridge",
  //    2: "turtledoves",
  //    3: "golden rings",
  // };
  //
  // print(gifts[1]);
  // var gifts = {};
  // gifts["first"] = "Mango";
  // print(gifts["first"]);
  //
  // Functions
  //
  // showOutput(square(2.5));
  // print(square.runtimeType);
  //
  // var list = ["apples" , "bananas", "oranges"];
  // list.forEach( (item) {
  //   print(item);
  // });
  //
  // Named Parameter
  // print(sum(a: 4, b: 2));
  //
  // Named and Positional Parameters can be mixed
  //
  // print(sum(4, b: 2));
  //
  // Classes
  //
  // Person person1 = Person("Shrinivas");
  // person1.showOutput();
  //
  // var person2 = Person("Jack", 25);
  // person2.showOutput();
  // var x = X("Jack");
  // print(x.name);
  // x.name = "Jill"; .name won't work since name is final
  // print(x.name);
  //
  // var car1 = Car("Accord", 2014, 150000);
  // car1.showOutput();
  //
  // var rect = Rectangle(3, 4, 20, 15);
  // print(rect.left);
  // rect.right = 12; // getters and setters don't need parenthesis
  // print(rect.left);
  //
  // letVerifyTheValue(10);
  // letVerifyTheValue(0);
}
// dynamic square(var num) => num * num;
// void showOutput(var msg) => print(msg);
// dynamic sum({var a, var b}) => a + b;
// dynamic sum(var a, {var b}) => a + (b ?? 0); // the named parameter is optional!
// dynamic sum(var a, [var b]) => a + (b ?? 0); // the positional parameter is optional!
=======
import "dart:io";
import "num.dart";

// class Person {
//   String name;
//   int age;
//   Person(this.name, [this.age = 18]);
//
//   void showOutput() {
//     print(name);
//     print(age);
//   }
// }
//
// class X {
//   final name; // type will be defined by inferred value
//   static const int age = 18; // final keyword can be changed with the constructor
//   // const can never be changed
//   X(this.name);
// }
//
// class Vehicle {
//   String model;
//   int year;
//
//   Vehicle(this.model, this.year) {
//     print(this.model);
//     print(this.year);
//   }
//   void showOutput() {
//     print(model);
//     print(year);
//   }
// }
// class Car extends Vehicle {
//   double price;
//   Car(String model, int year, this.price) : super(model, year);
//   // super passes model and year to the Vehicle constructor
//   void showOutput() {
//     super.showOutput();
//     print(this.price);
//   }
// }
// class Rectangle {
//   num left, top, width, height; // num is a type that can be int or double
//   Rectangle(this.left, this.top, this.width, this.height);
//   //Define two calculated properties
//   num get right => left + width;
//   set right(num value) => left = value - width;
//   num get bottom => top + height;
//   set bottom(num value) => top = value - height;
// }
// int mustBeGreaterThanZero(int val) {
//   if (val <= 0) {
//     throw Exception("Value must be greater than zero");
//   }
//   return val;
// }
// void letVerifyTheValue(var val) {
//   var valueVerification;
//
//   try {
//     valueVerification = mustBeGreaterThanZero(val);
//   } catch(e) {
//     print(e);
//   } finally {
//     if (valueVerification == null) {
//       print("Value is not accepted");
//     } else {
//       print("Value Verified: $valueVerification");
//     }
//   }
// }

main() {
  // Printing into Terminal
  //
  // var firstName = "Shrinivas";
  // String lastName = "Venkatesan";
  // print(firstName + " " + lastName);
  //
  // User Input
  //
  // stdout.writeln("What is your name: ?");
  // String? name = stdin.readLineSync();
  // print("My name is $name");
  //
  // Dynamic Variable
  //
  // dynamic weakVariable = true;
  // weakVariable = 200;
  // weakVariable = null;
  //
  // var s = r"In a raw string, not even \n gets special treatment";
  //
  //
  // Type Conversion
  //
  // var one = int.parse("1");
  // assert(one == 1);
  //
  // var onePointOne = double.parse("1.1");
  // assert(onePointOne == 1.1);
  //
  // var oneAsString = 1.toString();
  // assert(oneAsString == "1");
  //
  // var piAsString = 3.1415.toStringAsFixed(2);
  // assert(piAsString == "3.14");
  //
  // Constant Variables
  //
  // const a = 0;
  // const b = true;
  // const c = "a const string";
  //
  // print(a);
  // print(b);
  // print(c);
  //
  // print(a.runtimeType);
  // print(b.runtimeType);
  // print(c.runtimeType);
  //
  // Null-Aware Operator and Importing Classes
  //
  // var n = Num(); // class that is created
  // int? number;   // checks if number can be nullable
  //                // int? = int other than int? can check if variable is null
  //
  // number = n.num;// makes number = 10
  //
  // print(number);
  //
  // var n;
  // int number;
  // number = n?.num ?? 0; if number is null, ?? changes it to zero
  // print(number);
  //
  // int? number;
  // print(number ??= 100); since number is null, it makes it 100
  //
  // Ternary Operator
  //
  // int x = 100;
  // var result = x % 2 == 0 ? "Even" : "Odd";
  // print(result); result is even
  //
  // Type Test
  //
  // var x = 100;
  // if (x is int) {
  //   print("integer");
  // }
  //
  // Loops
  //
  // for (int i = 0; i < 10; i++) {
  //   print(i + 1);
  // }
  //
  // var numbers = [1, 2, 3];
  // for (var n in numbers) {
  //   print(n);
  // }
  //
  // var numbers = [1, 2, 3];
  // numbers.forEach((n) => {print(n)} );
  //
  // int num = 5;
  // while (num > 0) {
  //   print(num);
  //   num -= 1;
  // }
  //
  // int num = 5;
  // do {
  //   print(num);
  //   num -= 1;
  // } while (num > 0);
  //
  // continue statement
  //
  // for (var i = 0; i < 10; i++) {
  //   if (i % 2 == 0) continue;
  //   print("Odd: $i");
  // }
  //
  // Collection Types
  //
  //  List names = ["Jack", "Jill", 10, 100.1]; // List is similar to arrays
  //  var names2 = names; // shallow copy, only pointer is copied
  //                      // so if original changes new also changes
  //  names[1] = "Mark";
  //  // for deep copy: var names2 = [...names];
  //  for (var n in names2) {
  //    print(n);
  //  }
  //
  // Set
  // var halogens = {"fluorine",  "chlorine", "fluorine"};
  //
  // for (var x in halogens) {
  //    print(x); // only prints first fluorine and chlorine since set has
  //              // to be unique
  // }
  // var halogens = {};
  // print(halogens.runtimeType); //HashMap
  // var halogens = <String> {};
  // print(halogens.runtimeType); //HashSet
  //
  // Maps (similar to dictionary in Python)
  //
  // var gifts = {
  //    //Key:    Value
  //    1: "partridge",
  //    2: "turtledoves",
  //    3: "golden rings",
  // };
  //
  // print(gifts[1]);
  // var gifts = {};
  // gifts["first"] = "Mango";
  // print(gifts["first"]);
  //
  // Functions
  //
  // showOutput(square(2.5));
  // print(square.runtimeType);
  //
  // var list = ["apples" , "bananas", "oranges"];
  // list.forEach( (item) {
  //   print(item);
  // });
  //
  // Named Parameter
  // print(sum(a: 4, b: 2));
  //
  // Named and Positional Parameters can be mixed
  //
  // print(sum(4, b: 2));
  //
  // Classes
  //
  // Person person1 = Person("Shrinivas");
  // person1.showOutput();
  //
  // var person2 = Person("Jack", 25);
  // person2.showOutput();
  // var x = X("Jack");
  // print(x.name);
  // x.name = "Jill"; .name won't work since name is final
  // print(x.name);
  //
  // var car1 = Car("Accord", 2014, 150000);
  // car1.showOutput();
  //
  // var rect = Rectangle(3, 4, 20, 15);
  // print(rect.left);
  // rect.right = 12; // getters and setters don't need parenthesis
  // print(rect.left);
  //
  // letVerifyTheValue(10);
  // letVerifyTheValue(0);
}
// dynamic square(var num) => num * num;
// void showOutput(var msg) => print(msg);
// dynamic sum({var a, var b}) => a + b;
// dynamic sum(var a, {var b}) => a + (b ?? 0); // the named parameter is optional!
// dynamic sum(var a, [var b]) => a + (b ?? 0); // the positional parameter is optional!
>>>>>>> 8d783e271f86997110bd6378f21e18b06fda4e53
