import 'package:flutter/material.dart';

class EnglishMockReview extends StatefulWidget {
  final int index;

  EnglishMockReview({required this.index});

  @override
  _EnglishMockReviewState createState() => _EnglishMockReviewState();
}

class _EnglishMockReviewState extends State<EnglishMockReview> {
  bool showAdditionalText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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

