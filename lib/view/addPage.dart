import 'package:flutter/material.dart';
import 'package:weater/view/cityManagement.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body: 
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(
             children: [
              
                Row(
                  children: [
                    Container(
                       height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black,width: 2
                  )),
                      child: TextFormField(decoration: InputDecoration(hintText: "City name",
                      border: InputBorder.none,
                      prefixIcon:Icon(Icons.search), 
                         suffixIcon:
                          // Icon(Icons.close)
                         IconButton(onPressed: (){
                          
                         }, icon: Icon(Icons.close))
                         ),
                         ),
                    ),
                    TextButton(onPressed: (){
                       Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Citymanagement()));
                    }, child: Text("Cancel",
                    style: TextStyle(color: const Color.fromARGB(255, 28, 3, 119)),))   
                  ],
                )
             ],
           ),
         ),
    );
  }
}