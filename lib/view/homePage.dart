import 'package:flutter/material.dart';
import 'package:weater/view/cityManagement.dart';
import 'package:weater/view/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
     appBar: AppBar(
      backgroundColor: Colors.blue,
      leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Citymanagement()));
      },
       icon: Icon(Icons.location_city,color: Colors.white,)),
      title:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.location_on,color: Colors.white),
          Text("Malappuram",style: TextStyle(color:  Colors.white),),
        ],
      ) ,
      actions: [IconButton(onPressed: (){
        var search=snackBarShow(context);
        ScaffoldMessenger.of(context).showSnackBar(search);
      }, icon:Icon(Icons.more_horiz,color: Colors.white) )],
     
     ),
    );
  }
  snackBarShow(context) {
    return SnackBar(content: Column(
      children: [
        GestureDetector(
          onTap: (){ 
              Navigator.push(context, MaterialPageRoute(builder:(context)=>SettingsPage()));     
          },
          child: Text("Settings")),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          GestureDetector(
            onTap: () {
            
            },
            child: Text("Share"))
      ],
    ));
}

}

