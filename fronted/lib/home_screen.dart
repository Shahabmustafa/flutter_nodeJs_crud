import 'package:flutter/material.dart';
import 'package:fronted/add_data_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataScreen()));
              },
              icon: Icon(Icons.add),
              label: Text("Add Date"),
            ),
            ElevatedButton.icon(
              onPressed: (){

              },
              icon: Icon(Icons.update),
              label: Text("Update Date"),
            ),
            ElevatedButton.icon(
              onPressed: (){

              },
              icon: Icon(Icons.get_app),
              label: Text("Get Date"),
            ),
            ElevatedButton.icon(
              onPressed: (){

              },
              icon: Icon(Icons.delete),
              label: Text("Delete Date"),
            ),
          ],
        ),
      ),
    );
  }
}
