// `material` library, containing our widgets
import 'package:flutter/material.dart';

void main() {
  // MyApp() is our widget. runApp fills the screen with it
  runApp(MyApp());
}

// Doesn't change state during lifecycle
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp widget - for us to run material widgets
    return MaterialApp(
      // home = main page
      home: Scaffold(
        // Navbar = AppBar
        appBar: AppBar(
          title: Text('Exercise 1 - Flutter'),
        ),
        // Body = SingleChildScrollView
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            // Vertical stack

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Circular image
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/wheel.png'), // Ensure the image is in assets
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 24),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/wheel.png'), // Ensure the image is in assets
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 24),

                  // 2x2 Button Layout using Column and Rows
                  Column(
                    // 2 rows spaced by sizedbox
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // 2 buttons spaced by sizedbox
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                              textStyle: TextStyle(fontSize: 14),
                            ),
                            child: Text('BUTTON'),
                          ),
                          // Space between buttons
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                              textStyle: TextStyle(fontSize: 14),
                            ),
                            child: Text('BUTTON'),
                          ),
                        ],
                      ),
                      SizedBox(height: 16), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                              textStyle: TextStyle(fontSize: 14),
                            ),
                            child: Text('BUTTON'),
                          ),
                          SizedBox(width: 16), // Space between buttons
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.grey[300],
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                              textStyle: TextStyle(fontSize: 14),
                            ),
                            child: Text('BUTTON'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Spacing
                  SizedBox(height: 24),
                  // Email input field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                ],
              ),
            ),
         ),
      ),
    );
  }
}