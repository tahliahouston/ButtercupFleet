import 'package:flutter/material.dart';

class FleetsScreen extends StatefulWidget {
  const FleetsScreen({super.key});

  @override
  State<FleetsScreen> createState() => _FleetsScreenState();
}

class _FleetsScreenState extends State<FleetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      appBar: AppBar(
        title: const Text("Butter Fleet Management", style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF9CBAC7), // Light blue from your image
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   color: const Color(0xFF9CBAC7), // Light blue header bar
          //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          //   child:  _buildNavItem("Fleets", true),
          // ),
           Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "Fleet Vehicles",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 30,),
                ElevatedButton.icon(onPressed: (){}, label: Text('Add Fleet'),icon: Icon(Icons.add),),
                SizedBox(width: 30,),
                ElevatedButton.icon(onPressed: (){}, label: Text('Add Vehicle'),icon: Icon(Icons.add),)
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[300], 
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
