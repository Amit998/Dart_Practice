// dartcore

// import 'dart:core';

// void main(){
//   var Fname='AMIT ';
//   String Lname='Dutta';

//   print('Name : '+Fname+' '+Lname);

// }

// import 'dart:io';

// main(){
//   stdout.writeln('What is Your Name');
//   String name= stdin.readLineSync();

//   print('My Name Is $name');
// }

// data types
// main() {
//   // int,double,string,bool,dynamic

//   int amount1=100;
//   var amount2=200;
//   print('amound 1 $amount1 | amount 2 $amount2');
// }

// Type Convertion

// main() {
//   var one= int.parse('10');
//   if(one== 10){
//     print('cool');
//   }
// }

// class Num{
//   int num = null;

// }
// main(){
//   var n =Num();
//   int number;
//   print(n.num);

//   // if(n != null){
//   //   print('lol');

//   // }else{
//   //   print(number);
//   // }
// }
// void main(List<String> args) {
//   int x=1001;
//   var result= x % 2 == 0? 'Even':'Odd';
//   print(result);
// }

// import 'dart:ffi';

// import 'dart:wasm';

// void main(List<String> args) {
//   var x= 99.9;
//   if(x is int){
//     print('int');
//   }else if(x is cgar){
//     print('float');
//   }else{
//     print('char');
//   }
// }

// main(List<String> args) {
//   int number =1;
//   switch(number){
//     case 0:
//     print('0');
//     break;
//     case 1:
//     print('1');
//     break;
//   }
// }

// void main(List<String> args) {
//   for(var i =0 ; i< 10 ; ++i){
//     print(i);
//   }
// }

// main(List<String> args) {
//   var number=[1,2,3];
//    for (var n in number){
//      print(n);
//    }
// }

// main(List<String> args) {
//   var number=[1,2,3];

//   //  number.forEach((n) => print(n) );

//   number.forEach(printNum);
// }
// void printNum(num){
//   print(num);
// }

// main(List<String> args) {
//   for (var i=0; i<10;i++){
//     if(i % 2 == 0) continue;
//       print("odd $i");

//   }
// }
// void printNum(num){
//   print(num);
// }

// void main(List<String> args) {
//   var set=<String>{};
//   Set <String> names ={};
//   print(names.runtimeType);

// }

// main(List<String> args) {
//   // Map
//   var gift={
//     1:'Amit',
//     2:'Dutta',
//     3:'Katwa'
//   };
//   var newMap={};
//   newMap['First']='mango';

//   print(newMap);

// }

// void main(List<String> args) {
//   showOutput(squre(2));
//   // print(squre.runtimeType);

// }

// dynamic squre(var num) => num*num;

// void showOutput(var msg){
//   print(msg);
// }

// main(List<String> args) {
//   var list=['Amit','Dutta'];
//   list.forEach(printF);
// }
// void printF(item){
//   print(item);
// // }
// main(List<String> args) {
//   print(sum( 4,num2: 9));

// }

// dynamic sum(var num1,{ var num2}) => num1+ (num2  ?? 1);

// class person{
//   String name;
//   int age;

//   person(String name ,[int age=30]){
//     this.age=age;
//     this.name=name;

//   }

//   void showOutput(){
//     print(age);
//   }
// }
// void main() {
//   person p= person('Amit');
//   var p2=person('lol');

//   // p.age=12;
//   p.showOutput();
//   p2.showOutput();
// }

// class X{
//   final name;
//   static const int age=12;
//   X(this.name);
// }
// main() {
//   var x= X('Jack');
//   print(x.name);

//   // x.name='ami';
//   // print(x.age);

// }

// void main() {
//   var circleSlot= new Slot<Circle>();
//   circleSlot.insert(new Circle());

// }
// class Circle{}
// class Squre{}

// class Slot<T>{
//   insert(T shape){

//   }
// }

// import 'dart:convert';
// void main(List<String> args) {
//   var rawJson='{"url":"http://blah.jpg","id":1}';
//   var parsedJson=json.decode(rawJson);

//   // var imageModel=new ImageModel(
//   //   parsedJson['id'],
//   //   parsedJson['url']
//   // );

//    var imageModel=new ImageModel.fromJson(parsedJson);

//   print(imageModel.id);

//   // print(parsedJson['url']);
// }

// class ImageModel{
//   int id;
//   String url;
//   ImageModel(this.id,this.url);

//   ImageModel.fromJson(parsedJson){
//     id=parsedJson['id'];
//     url=parsedJson['url'];
//   }

// }

// import 'dart:async';
// main() async{
//   print('About The Fetch data...');
// //  get('http://lol.lol').then((result) {
// //    print(result);

// //  });
//   var result= await get('http://lol.lol');
//   print(result);

// }
// Future<String> get(String url) {
//     return new Future.delayed(new Duration(seconds: 3),(){
//       return 'Got The Data';
//     });
//   }
// void main(List<String> args) {
//   var myName='Amit';
//   var myNumber=12221;

// }

// import 'dart:async';

// class Cake{

// }
// class Order{
//   String type;
//   Order(this.type);
// }

// void main() {
//  final controller =new StreamController();
//  final order = new Order('chocolate');
//  final baker =new StreamTransformer.fromHandlers(
//    handleData: (cakeType,sink){
//      if( cakeType == 'chocolate'){
//        sink.add(new Cake());
//      }
//      else{
//        sink.addError("i cant bake that");
//      }

//    }
//  );

//  controller.sink.add(order);
//  controller.stream.map((order) => order.type)
//  .transform(baker)
//  .listen((cake) => print('Here your cake $cake'),
//  onError: (err) =>
//    print(err)
//  );
// }

// import 'dart:async';

// void main(){
//   final bloc=new Bloc();

//   bloc.emailController.stream.listen((value) {
//     print(value);
//   });
//   bloc.emailController.sink.add('My New Email');
//   bloc.changedEmail("my new email");

// }

// class Bloc{

//   final emailController =StreamController<String>();

//   // Add data to stream
//   Function<String> get changedEmail => emailController.sink.add;

//   // Retrive data from stream
//   Stream<String> get email => emailController.stream;
// }

void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SoalarPlant solar = new SoalarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];
  addPlant(PowerPlant plant) {
    int cost = plant.costOfEnergy;
    bool conformation = plant.turnOn('5');

    if (conformation == true) {
      print('Available');
    }
    print(cost);
    plant.turnOn(' 5 Hours');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  int costOfEnergy;
  bool turnOn(String duration);
}

abstract class ABuilding {
  int height;
}

class NuclearPlant implements PowerPlant {
  turnOn(String duration) {
    print('I am A nuclear plant turning on ' + duration);
    return false;
  }

  int costOfEnergy = 500;
}

class SoalarPlant implements PowerPlant {
  int height;
  turnOn(String duration) {
    print('I am A soclar plant turning on' + duration);
    return true;
  }

  int costOfEnergy = 700;
}
