import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'english_mock.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSecondPageVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Quest Review'),
      ),
      body: Column(
        children: [
          SizedBox(height: 8.5),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 241, 241),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 117, 114, 114).withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: 125,
            width: 350,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Text(
                    'Hi! let us review',
                    style: TextStyle(
                      fontSize: 22.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 0,
                  child: Text(
                    'This is your path to excelling in Entrance Exams!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'lib/assets/hi 2.png',
                    height: 120, // Specify the height of the image
                    width: 150, // Specify the width of the image
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSecondPageVisible = false; // Set second page visibility to false
                  });
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(width: 10),
              Text(
                'Explore Courses',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSecondPageVisible = true; // Set second page visibility to true
                  });
                },
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(height: 12.5),
          if (!isSecondPageVisible) _buildFirstPageContent(),
          if (isSecondPageVisible) _buildSecondPage(),
        ],
      ),
      drawer: NavDrawerExample(),
    );
  }
  Widget _buildFirstPageContent() {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 202, 174),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/book 1.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 60,
                            height: 60,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'Aptitude Test',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 170, 211, 245),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/book 3.png', // Replace with your image asset path
                          fit: BoxFit.cover, // Adjust image fit as needed
                          width: 70,
                          height: 70,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'Numerical Test',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 234, 235),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/book 4.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 90,
                            height: 70,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'Deductive ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 144, 98),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/book 2.png', // Replace with your image asset path
                          fit: BoxFit.cover, // Adjust image fit as needed
                          width: 60,
                          height: 60,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'Inductive',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 125, 125),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/design 4.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 90,
                            height: 70,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'Mathematics',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 154, 202, 82),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/design 2.png',
                          fit: BoxFit.cover,
                          width: 90,
                          height:90,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'Science Mock',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
  Widget _buildSecondPage() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the next page when English Mock is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EnglishMockReview(index: 0)),
                      );
                    },
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 177, 249),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/book 4.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 90,
                            height: 70,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'English Mock',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 170, 157),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/book 1.png', // Replace with your image asset path
                          fit: BoxFit.cover, // Adjust image fit as needed
                          width: 60,
                          height: 60,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'Language',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 173, 180, 136),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/book 3.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 80,
                            height: 70,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'Logical',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 251, 255, 20),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/book 2.png', // Replace with your image asset path
                          fit: BoxFit.cover, // Adjust image fit as needed
                          width: 60,
                          height: 60,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'Critical Thinking',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(243, 67, 98, 211),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'lib/assets/design 3.png', // Replace with your image asset path
                            fit: BoxFit.cover, // Adjust image fit as needed
                            width: 90.5,
                            height: 80,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Text(
                              'ICT',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 169, 211),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/design 1.png', // Replace with your image asset path
                          fit: BoxFit.cover, // Adjust image fit as needed
                          width: 100,
                          height: 60,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Text(
                            'ARTS',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
