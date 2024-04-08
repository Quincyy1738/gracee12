import 'package:flutter/material.dart';

class NavDrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 247, 239, 183), // Background color of the header
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'lib/assets/applogo 2.png', // Replace 'assets/cquere_logo.png' with your image asset path
                      height: 120, // Adjust height as needed
                      width: 120, // Adjust width as needed
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CQUERE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Color of the title text
                          ),
                        ),
                        SizedBox(height: 4), // Adjust the height as needed
                        Text(
                          'UPCAT,PUPCET,USTET,ACET,MAPUA,DLSUCET,DCAT,etc.', // Your additional text
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.black, // Color of the additional text
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Favorites'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(1));
            },
          ),
          ListTile(
            title: Text('Result History'),
            onTap: () {
              Navigator.of(context).pop(); // Close the drawer
              Navigator.of(context).push(_NewPage(2));
            },
          ),
          ListTile(
            title: Text('About College Quest Review'),
            onTap: () {
              // Add your logic here
            },
          ),
        ],
      ),
    );
  }
}

class _NewPage extends MaterialPageRoute<void> {
  _NewPage(int id)
      : super(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Page $id'),
          elevation: 1.0,
        ),
        body: Center(
          child: Text('Page $id'),
        ),
      );
    },
  );
}
