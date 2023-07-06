import 'dart:math';

// void main(){
//   print(pow(2,3));
// }

void main(){
  //CONTROL FLOW
  var myList1 = ['a','b','c'];
  var mySet = {'x','y','z'};
  var myMap = {'a':0,'b':1,'c':2};
  var myList = [1,2,3,4,5,6,7,8,9,10];
  
  //while
  
  while(myList.length>1){
var item = myList.removeLast();
    print('Removing $item');
  }
  
//   int x=6;
//   print('Before Do-While Loop');
//   //we don't see this while since false
//   do{
//     print('do-while loop: $x');
//     //x++;
//   }while(x<=5);
//   print('After Do-While Loop');
  
//   int x=6;
//   print('Before While Loop');
//   //we don't see this while since false
//   while(x<=5){
//     print('while loop: $x');
//     x++;
//   }
//   print('After While Loop');
//   var i = 0;
// //   while(i<5){
// //     print('$i');
// //     i++;
// //   }
//   do{
//     print('$i');
//     i++;
//   }while(i<5);
  
  
  
  //For
//   for(final i in myList){
//     print(i);
//   }
  
//   for(var i = 0; i<myList.length; i++){
//     print(myList[i]);
//   }
  
//   for(var i = 0; i<myList.length; i++){
//     if(i%2 == 0){
//       print(myList[i]-1);
//     }
    
//     for(final item in myList){
//       if(item%2 == 0){
//         print(item);
//       }
//     }
//     else{
//       print('This number $i is not even');
//     }
    //print(myList[i]);
  
  
//   for(var i=0; i<myMap.length; i++){
//     print('The item ad index $i is: \n${myList[i]}');
//     //print( myList[i]);
//     //print('\n');
//   }
  
//   myMap.forEach((key, val){
//     print('$key, $val');
//   });
  
//   for(final key in myMap.keys){
//     print(key);
//     print(myMap[key]);
    
//   }
  
//   for(final item in mySet){
//     print(item.toUpperCase());
//   }
  
//   var list = [1,2,3,4];
//   for (var i in list){
//    // print(i);
//   }
  
//    var myMap = {
//     'David':10,
//     'Claire':5,
//     'Calvin':10,};
  
//   for(var i = 0; i < myMap.length ; i++){
//     print(i);
//   }
  
//     myMap.forEach((key, val){
//     print('{key: $key, value:$val}');
//   });
//   print(myMap.keys);
//   print(myMap.keys.runtimeType);
//   for(final key in myMap.keys){
//     print(key);
//     //we are looking for the value of the key
//     print(myMap[key]);
//   }
  
  
//   var name = 'Greg';
//   var wrongName = 'Wrong';
//   var storedName = 'Greg';
  
//   var match = name==wrongName;
//   var lastLetter = name[name.length-1];
// //   //last letter of a string variable
// //   print(storedName[storedName.length-1]);
//   //print(name==storedName);
  
//   if(match){
//     print('Name matched storedName');
//     print('welcome to the application');
//   }else if(lastLetter == 'g'){
//     print('Wrong name but close, last letter is g');
//   }
//   else{
//     print('there was no match between name and storedName');
//   }
//   if(false){
//     print('first block');
//   }else if(true){
//     print('second block');
//   }else if (false){
//     print('third block');
//   }else{
//     print('last block');
//   }
  
  //static vs dynamic
  //STATIC TYPING is when you lock the type for a variable and you can't change that
//   var a = 10;//int
//   a = "100 + 100";//String
//   print(a);
  //DYNAMIC TYPING is when you dont lock the type for a variable 
//   dynamic a = 10;
//   print(a.runtimeType);
//   a = '100 + 100';
//   print(a.runtimeType);
  
  
  
  //const && final
//   var a = 0;
//   var speed = 100;
// //   print(a);
// //   a = 20;
// //   print(a);
//   //no one can re-assign the value of version
//   //with final we can assign a run time calculation
// //   final version = 2*speed;
// //  // final version = 2.1;
// //   print(version);
// //   version = 3;
//   const version = 2.1;
//   // with const we can't do run time calculation
//   const version = 2.1*speed;
//   print(version);
  
  
  
  //comparison operators
//   var nameOne = 'Jose';
//   var nameTwo = "Mimi";
//   print('Before the asssert');
//   //assert(1 == 1);
//   assert(1 == 2);
//   print('After assert');
//   assert(nameOne != nameTwo);
  //typetest operators
//   var a = 30;
//   print(a.runtimeType);
//   print(a is String);
//   var alpha = 0;
//   var beta = 1;
// //   print(alpha);
//   //beta = alpha + 1;
//   //beta = ++alpha;
//   //when it is after it gets added to alpha but it doesn't get assigned to beta
//   // to assign it to beta we need the ++ at the beginning
//   beta = alpha++;
//   print(beta);//0
//   print(alpha);//1
//   ++alpha;
//   alpha++;
//   //alpha = alpha + 1;
//   print(alpha);
  
//   //map
//   var employees = {
//     'David':10,
//     'Claire':5,
//     'Calvin':10,
//   };
// //   print(employees);
// //   print(employees['David']);
// //   print(employees['Hose']);
// //   employees['Zed'] = 100;
//   var calvinYears = employees['Calvin'];
//   var removedValue = employees.remove('Calvin');
//   employees.remove('Calvin');
//   print(calvinYears);
//   print(removedValue);
//   print(employees);
  
//   //set
//   //the intersection grabs the element that leaves in both sets
//   var footballTeam = {'Andrew','Zach','Calvin'};
//   var playCast = {'David','Calvin','Claire'};
//   final intersactionSet = footballTeam.intersection(playCast);
//   print(intersactionSet);
  
//   var elements = {'0','k','Ni','Rd'};
//   print(elements);
//   elements.add('F');
//   print(elements);
//   elements.addAll(['H','C']);
//   print(elements);
//   elements.add('C');
//   print(elements);
  
  //lists
//   var myListNum = [10,20,30];
//   var myListAlpha = ['a','b','c','d','e'];
//   var list = ['f','g'];
//   var myListMixed = ['a',1,20];
  
// //   print(myListAlpha[0]);
// //   print(myListAlpha.sublist(0,2));
// //   print(myListAlpha.length);
// //   print(myListAlpha+list);
//   //spread operator
// //   print([0,1,2, ...list]);
  
//   print(myListAlpha.last);
//   print(myListAlpha[myListAlpha.length-1]);
  
//   var theTruth = true;
//   var falseHood = false;
  
//   print(falseHood.runtimeType);
  
  
//   var nameOne = 'mimi';
//   print(nameOne);
//   String nameTwo = 'hose';
//   var myNum = 10;
  
//   print('My name is $nameOne and my number is $myNum and I have $myNum \$');
//   print('The length of nameTwo is ${nameTwo.length}');
//   print('The upper case version of NameOne is ${nameOne.toUpperCase()}');
  
//   var errorMessage = "Uxh oxh, thexre's a bunxch of txypos";
//   var replacedMessage = errorMessage.replaceAll(RegExp(r'x'),'');
//   print(replacedMessage);
//   print(errorMessage.replaceAll('x',''));
  
//   var s1 = 'something here';
//   print(s1);
//   print(s1.length);
//   print(s1.toUpperCase());
//   print(pow(2,3));
//   //scientific notation
//   //1.2*10^3
//   var expNum = 1.2e3;
//   print(expNum);
  
//   var stringNum = '14.7';
//   print(stringNum);
//   //we check the runtimeType
//   print(stringNum.runtimeType);
//   var convertedNum = double.parse(stringNum);
//   print(convertedNum);
//   print(convertedNum.runtimeType);
//   var someNum = 3.5;
//   var intNum = someNum.round();
//   print(intNum);
//   print(intNum.runtimeType);
//   //rounds up
//   print(someNum.ceil());
//   print(someNum.floor());
    
}


Global variable --> accesible anywhere in .dart file
//local variables
//Scope var (nested functions)


//outside function class
// var globalVar = 'Global';
// void anotherFunction(){
//   print('Another function references: $globalVar');
// }

void main() {
  //Task 1: Create a function that takes in two integers and returns their sum
  int add(int a, int b){
    return a+b;
  }
  //print(add(2,4));
  
  //Task 2: Create a function that takes ina a string and returns its length
  int sumOfEvents(List<int> numbers){
    return numbers.length;
  }
  //print(sumOfEvents([1,2,3]));
  
  //Taks 3: Create a function that takes in a list of integers and returns the sum of all even numbers int the list
  int sumOfEvens(List<int> numbers){
    int sum = 0;
    for(int number in numbers){
      if(number%2 == 0){
       sum = sum + number;
      }
    }return sum;
    
  }
  
//   print(sumOfEvens([1,2,3,4,5]));
  
  //Task 4: Create a funtion that takes in a an integer and returns true if it's even and false otherwise
  bool isEven(int number) => number.isEven;
  //print(isEven(1));
  
  //Task 5: Create a function that takes in a list of strings and returns a new list with all strings in uppercase
  List<String> convertToUppercase(List<String> strings){
     List<String> uppercaseStrings = [];
    for (String string in strings){
      uppercaseStrings.add(string.toUpperCase());
    }return uppercaseStrings;
  }
  
  //print(convertToUppercase(['ne','one','nome']));
  
  
  //Task 6 Create a function that takes in a list of intergers and returns the highest number in the list

  int findHighest(List<int> numbers){
    int highest = numbers[0];
    
    for (int number in numbers){
      if(number > highest){
        highest = number;
      }
    }return highest;
    
  }
  //print(findHighest([1,2,3,4,5,6,7,]));
  
  //Task 7: Create a function that takes in a string and returns true if the string contains the letter 'a', false otherwise
  bool containsLetterA(String str) =>str.contains("a");
  //print(containsLetterA('it is me'));
  
  //Task 8: Create a function that takes in a list of integers and returns the product of all numbers in the list
//   int getProduct(List<int> numbers){
//     int product = 1;
//     for(int number in numbers){
//       product = product * number;
//     }
//     return product;
//   }
  
  //print(getProduct([1,2,3]));
  
  //Task 9: Create a function that takes in an integer and returns true if it's a prime number, false otherwise
//   bool isPrime(int number){
//     if(number<=1){
//       return false;
//     }
//     for (int i = 2; i<= number/2; i++){
//       if(number%i == 0){
//         return false;
//       }
//     }return true;
// //     if(number%number == 0 && number%1 == 0 && number!=2){
// //       return true;
// //     }else{
// //       return false;
// //     }
//   }
//   print(isPrime(4));
  
  //Task 10: Create a function that takes in a list of integers and returns a new list with all odd numbers removed
  List<int> removeOdds(List<int> numbers){
    List<int> evenNumbers= [];
    for(int number in numbers){
      if(number%2 ==0){
        evenNumbers.add(number);
      }
    }return evenNumbers;
    
  }
  
  print(removeOdds([1,2,3,4,5,6,7]));
  
//   //Function that is 1 line of code =>
//   int mySquare(int num){
//     return num*num;
//   }
//   int arrowSquare(int num) => num*num;
  
//   void printMessage(String message) => print('Message: $message');
  
//   print(mySquare(5));
//   print(arrowSquare(2));
//   printMessage('Hey Awesome');
 
//   var localVar = 'Local';
//   print('Global variable is :$globalVar');
//   print('My local var is : $localVar');
// //   anotherFunction();
//   print('Main attempt to print nestedVar: $nestedVar');
//   void nestedFunction(){
//     print(globalVar);
//     print(localVar);
//     var nestedVar = 'Nested';
//     print(nestedVar);
//   }
  
//   nestedFunction();
 
  //if statement
//   var result = grade(100);
//   print(result);//fail
  
  //while
//   print(contains([1,2,3],2));
  
  //for statement
//   print(calculateSum([1,2,3,4,5,6]));
}
//if Statement
//100 perfect score, >= Passed, <60 Fail
// String grade(int score){
//   if(score>100 || score<0){
//     return 'Incorect range for score';
//   }else if(score==100){
//     return 'Perfect Score';
//   }else if (score >= 60){
//     return 'Pass';
//   }else{
//     return 'Fail';
//   }
// }

//While loop
//return a boolean indicationg if a search value 
//is in a list
// bool contains(List<int>numbers, int searchValue){
//   //start at index 0
//   int i = 0;
//   while(i<numbers.length){
//     //compare every item in the list to the searchValue
//     if(numbers[i] == searchValue){
//       return true;
//     }
//     i++;
//   }
//   return false;
  
// }



//For Loops, sum of a list of numbers
// int calculateSum(List<int> numbers){
//   int sum = 0;
//   for(int i=0; i<numbers.length;i++){
//     sum = sum + numbers[i];
//   }
  
//   return sum;
// }

// enum Meal {
//   breakfast,
//   lunch,
//   dinner,
// }

// void main (){
//   var todayMeal = Meal.lunch;
  
//   if (todayMeal == Meal.breakfast){
//     print('I am having breakfast');
//   }else if(todayMeal == Meal.lunch){
//     print("I am having lunch");
//   }else if(todayMeal == Meal.dinner){
//     print('I am having dinner');
//   }
  
// }


// //MIXIN
// mixin WalkMixin{
//   void walk(){
//     print('I can walk');
//   }
// }

// mixin SwimMixin{
//   void swim(){
//     print('I can sweem');
//   }
// }

// class Animal with WalkMixin, SwimMixin {
//   //Empty
//   void animalMethod(){
//     print('I am an animal');
//   }
// }

// void main(){
  
//   var animal = Animal();
  
//   animal.swim();
//   animal.walk();
//   animal.animalMethod();
  
// }


// // TODO: 1. Create a class named 'Car' with the following properties:
// // - brand (String)
// // - model (String)
// // - year (int)
// // Add a constructor to initialize these properties.
// class Car{
//   String brand;
//   String model;
//   int year;
//   Car(this.brand,this.model,this.year);
// }

// // TODO: 2. Create a class named 'ElectricCar' that inherits from the 'Car' class.
// // Add the following properties to the 'ElectricCar' class:
// // - batteryCapacity (double)
// // - range (double)
// // Add a constructor to initialize these properties along with the properties from the 'Car' class.
//  // HINT: https://dart.dev/language#inheritance
// class ElectricCar extends Car{
//   double batteryCapacity;
//   double range;
  
//   ElectricCar(this.batteryCapacity, this.range,super.brand, super.model, super.year);
// }

// // TODO: 3. Create instances of the 'ElectricCar' classes and print their properties.

// void main(){
//   ElectricCar electricCar = ElectricCar(1.1,100.0,'Audi','x5',2023);
//   print(electricCar.batteryCapacity);
// }





// class Animal{
//   void eat(){
//     print('Animal is eating!');
//   }
// }

// class Dog extends Animal{
//   void bark(){
//     print('Dog is barking!');
//     //getting access to the parent method
//     super.eat();
//   }
//   //Allows us to override the original inherited method calls
  
//   @override
//   void eat(){
//     print('Dog is eating override parrent method');
//   }
// }


// void main(){
    
//   Dog myDog = Dog();
//   myDog.bark();
//   myDog.eat();
// }





// // Define a class called BankAccount
// class BankAccount {
//   //TO DO: CREATE AN INSTANCE VARIABLE CALLED 
//   // BALANCE WITH A DEFAULT VALUE OF ZERO
//   double balance = 0.0;
//   double _privateBalance = 200;

//   // BONUS: Can you figure out how to make it "private"
 

//   // TODO: Create a Named constructor that can take in a
//   // a double value and set that as the balance
//    BankAccount.fromNumber(double initialBalance){
//    balance = initialBalance;
//  }



//   // TODO: Create a deposit method that takes an amount a
//   // and adds it to the balance
//    void deposit(double amount){
//    balance += amount;
   
//  }
   

//   // TODO: Create a withdraw method that takes an amount 
//   // and subtracts it from the balance
//   void withdrow(double amount){
//     balance -= amount;
//   }
  
 
// }

// void main() {
//   // Create a BankAccount object with an initial balance of 100.0
//   BankAccount balance = BankAccount.fromNumber(100.00);
  
//   // Deposit 50.0 into the account
//   balance.deposit(50.0);
   
//   // Withdraw 25.0 from the account
//   balance.withdrow(25.0);
   
//   // Print the final balance
//   print(balance.balance);
   
// }





// class Person{
//   //instance Variables
//   //no default values
//   String name='default';
//   int age=0;
  
//   //DataType and the nameVar;
//   //parametarised constructor
// //   Person(this.name, this.age);
//   void printInfo(){
//     print('My name is : $name and my age is : $age');
//   }
  
//   //nameOfClass(this.parm1,this.param2 ....)
  
//   //Named Constructor
//   //Custom Constructor(constructs from any object)
//   //MyClass.fromObject(Map myMap){}
// //   Person.fromMap(Map myMap){
// //     name = myMap['name'];
// //     age = myMap['age'];
// //   }
  
//   Person.fromList(List myList){
//     name = myList[0];
//     age = myList[1];
//   }
// }

// void main(){
// //   Map mySetupMap = {'age':49,'name':'calvin'};
// //   Person examplePerson = Person.fromMap(mySetupMap);
//   List myList = ['G',40];
//   Person newPerson = Person.fromList(myList);
// //   Person examplePerson = Person();
// //   examplePerson.printInfo();
//   newPerson.printInfo();
  
// }



// void main(){
// //   Person person1 = Person();
// //   person1.age = 29;
// //   person1.name = 'G';
// //   person1.introduce();

// }

// class Person{
//   //Instance variables that define properties of a class
//   String name = 'default';
//   int age = 0;
  
//   //Method (perform some behaviour using the attributes of the class)
//   //functions inside a class that typically act on the class object
//   //or perform some action using class attributes
//   void introduce(){
//     print('Hello my name is $name and I am $age years old');
//   }
// }


void main() {
  
  
//   //Ternary Operator
  
//   //condition ? expression1(if true) : expression2(if false)
//   //String result = age>21 ? 'Adult' : 'child'
  
//   //int number = 9;
//   //String? result;
//   //or by assigning the result value here and printing it later
//   //                   condition ? if true : if false
//   //String? result = number%2 == 0 ? 'Even' : 'Odd';
  
// //   if(number%2 == 0){
// //     result = 'Even';
// //   }else{
// //     result = 'Odd';
// //   }
//     //print(result);
  
//   //instead of the above if we can use this
// //   print(number%2 == 0 ?  'Even' : 'Odd');
  
// //   int a = 10;
// //   int b = 11;
// //   int? maxValue = a>b ? a : b ;
  
// // //   if (a>b){
// // //     maxValue = a;
// // //   }else{
// // //     maxValue = b;
// // //   }
  
// //   print(maxValue);
  
// //   bool isEven(int num){
// //     if(num%2 == 0){
// //       return true;
// //     }else{
// //       return false;
// //     }}
  
// //   bool isEven(int num) => num%2 == 0 ? true : false ;

// //   print(isEven(3));
  
// //   //LATE
// //   //Create a variable without an assignment but not let it be null
// //   //since we don't have an assignment yet
// //   //create a variable before value assignment
// //   //but it can't be null
// //   late String name;
// //   //ERROR
// //   //print(name);
  
// //   //assignment
// //   name = 'george';
// //   print(name);
  
  
  
//   //NULL AWARE OPERATORS
  
//   //1.
//   //Null Operator ??
//   //Left ?? Right --> checks the val on left and if null returns right, if not returns left
// //   String? name;
// //   String otherName = 'John';
// //   String thirdOption = 'Mimi';
// //   name = 'George';
//   //print(name ?? otherName);
//   //print(thirdOption ?? otherName);
  
// //   //2.
// //   //Null aware coalescing operator
// //   //??=
// //   //only re-assigns if var is null
// //   String? name;
// //   name ??= 'George';
// //   print(name);
  
// //   name ??= 'New';
// //   print(name);
  
//   //3.
//   //Null aware access operator
//   //object.method()
//   //object?.method()
  
// //   String? text;
// //   print(text?.length);
  
// //   //4
// //   //Null assertion operator
// //   String? message;
// //   message = 'hello dart';
// //   print(message!.length);
  
  
  
  
  
  
//   //NULL Safety
// //   var employees = {'bob':10, 'mary':20};
// //   print(employees['bob']);
  
// //   print(employees['claire']);
  
//   //Null safety
//   //Type int assign null
//   // a question mark allows it to be null
//   //int? someNum = null;
// //   int? someNum;
// //   print(someNum);
  
  
  
  
// }
