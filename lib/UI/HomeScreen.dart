import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Home Screen'),
        centerTitle: true,
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: (){

        PersonModel personModel = PersonModel(name: 'Huzaifa khan');
        PersonModel personModel1 = PersonModel(name:  'Huzaifa Khan');

        Map<String,dynamic> data = {
          'name' : 'Huzaifa Khan'
        };

         print(personModel == personModel1);

      }),
    );
  }
}

class PersonModel {
  String? name;
  PersonModel({this.name});

  @override
  List<Object> get  props => [name.hashCode];
}