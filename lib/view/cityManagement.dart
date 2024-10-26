import 'package:flutter/material.dart';
import 'package:weater/view/addPage.dart';
import 'package:weater/view/homePage.dart';

bool toggles = false;

class Citymanagement extends StatefulWidget {
  const Citymanagement({super.key});

  @override
  State<Citymanagement> createState() => _CitymanagementState();
}

class _CitymanagementState extends State<Citymanagement> {
  @override
  Widget build(BuildContext context) {
    void toggle() {
      setState(() {
        toggles = !toggles;
      });
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "City Management",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>AddPage()));
              },
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Auto-location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: toggle,
                    icon: Icon(
                      toggles ? Icons.toggle_off : Icons.toggle_on,
                      size: 40,
                      color: const Color.fromARGB(255, 38, 7, 153),
                    ))
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
