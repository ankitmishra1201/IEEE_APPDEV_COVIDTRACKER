import 'package:flutter/material.dart';

// Main Function Start
void main() {
  runApp(List());
}
// Main Function Ends

// First Stateless Widget with MaterialApp Start
class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "AFGANISTAN",
    "USA",
    "BRAZIL",
    "INDIA",
    "NEW ZEALAND",
    "PAKISTAN",

  ];

  // Description List Here


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // App Bar
        title: Text(
          "Select Country",
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, '/country');


            },

            child: Card(
              child: Row(
                children: <Widget>[
                  Container(

                    width: 420,
                    height: 100,
                    child:
                  Padding(

                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}