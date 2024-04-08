import 'package:flutter/material.dart';
import 'navigation_drawer.dart';

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
                        MaterialPageRoute(builder: (context) => CollegeQuestReview(index: 0)),
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

class CollegeQuestReview extends StatefulWidget {
  final int index;

  CollegeQuestReview({required this.index});

  @override
  _CollegeQuestReviewState createState() => _CollegeQuestReviewState();
}

class _CollegeQuestReviewState extends State<CollegeQuestReview> {
  bool showAdditionalText = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 7 || index == 8 || index == 9) {
                return ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Aptitude Test Review #${index + 1}',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to CollegeQuestReview page when the button is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Questreview(index: index)),
                          );
                        },
                        child: Text('view'),
                      ),
                    ],
                  ),
                  tileColor: Colors.yellow[100 * (index % 9 + 1)],
                );
              } else {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: 100,
                  color: index == 9 ? Color.fromARGB(255, 193, 169, 17) : Colors.yellow[100 * (index % 9 + 1)],
                  child: Center(
                    child: Text(
                      'Container ${index + 1}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

class Questreview extends StatefulWidget {
  final int index;

  Questreview({required this.index});

  @override
  _QuestreviewState createState() => _QuestreviewState();
}

class _QuestreviewState extends State<Questreview> {
  bool showAdditionalText = false;

  @override
  Widget build(BuildContext context) {
    String mainText;

    if (widget.index == 0) {
      mainText = '\n\n${widget.index + 1}. Which word form is not correct?\n\n'
          'A. Clotheful\n'
          'B. Clothing\n'
          'C. Clothed\n'
          'D. Clothe\n\n';
    } else if (widget.index == 1) {
      mainText = '\n\n${widget.index + 1}. What _______ when I called?\n\n'
          'A. Was you doing\n'
          'B. Was not you do \n'
          'C. Were you doing\n'
          'D. You were doing\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else if (widget.index == 2) {
      mainText = '\n\n${widget.index + 1}. Nothing _________ done when the boss is away.\n\n'
          'A.     Becomes\n'
          'B.           Gets \n'
          'C.         Been\n'
          'D.          Got\n\n';
    } else {
      mainText = 'This is the College Quest Review page.';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Questreview'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                mainText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
          if (widget.index == 0 || widget.index == 1|| widget.index == 2|| widget.index == 3|| widget.index == 4|| widget.index == 5|| widget.index == 6|| widget.index == 7|| widget.index == 8|| widget.index == 9) ...[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showAdditionalText = !showAdditionalText;
                });
              },
              child: Text(showAdditionalText ? 'Hide Answer' : 'Show Answer'),
            ),
            if (showAdditionalText && widget.index == 0)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'A. Clotheful',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 1)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'C. Were you doing',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 2)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 4)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 5)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 6)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 7)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 8)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 9)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'B. Gets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}