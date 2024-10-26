import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height*0.09,
                child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Home Screen Weather"),
                    Icon(Icons.arrow_right_sharp)
                  ],
                ),
              ),
            ),
            const Text("Temperature unit \nDegrees Celsius"),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            const Text("Check for update \n V5.4.3.2")
          ],
        ),
      ),
      
    );
  }
}