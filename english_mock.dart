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
    body: SingleChildScrollView(
      child: Column(
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
          Container(
            width: 200,
            height: 200,
            child: Image.asset('lib/assets/book 1.png'),
          ),
          SizedBox(height: 80),
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
                    'A. Clotheful\n\n'
                        'The word Clotheful" is not a correct word form. The correct word forms are "Clothing" (noun form), "Clothed" (past participle form), and "Clothe" (verb form). "Clotheful" is not a recognized word in the English language.\n',
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
                    'C. Were you doing\n\n'
                        'The correct answer is "were you doing". This is the correct form of the question in past continuous tense. It is asking about the action or activity that the person was engaged in at the time of the call.',
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
                    'B. Gets\n\n'
                        'When the boss is away, nothing "gets" done means that no work or tasks are accomplished in the absence of the boss. The word "gets" implies that there is a lack of productivity or progress during this time.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            if (showAdditionalText && widget.index == 3)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'C.Until\n\n'
                        'The word "until" is the correct answer because it indicates a specific point in time when the action of using the car will end. It implies that the car will be available for use up to a certain time tomorrow, but not after that time.',
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
                    'B. Cajole\n\n'
                        '"Cajole" means to persuade someone through flattery, coaxing, or sweet talk.',
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
                    'B. To improve or make better\n\n'
                        '"Ameliorate" means to make something better or improve a situation.',
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
                    'A. Apathy\n\n'
                        '"Apathy" refers to a lack of interest, concern, or enthusiasm.',
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
                    'A. was so bored\n\n'
                        'The correct word should be "boring" instead of "bored." The correct sentence would be: "The movie was so boring that most of the audience left before it ended."',
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
                    ' B. Meticulous\n\n'
                        'The correct spelling is "Meticulous." It means showing great attention to detail; very careful and precise.',
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
                    'A.Coalesce\n\n'
                        'The correct spelling is "Coalesce." It means to come together and form one mass or whole.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            // ...
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (widget.index > 0) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Questreview(index: widget.index - 1)),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  textStyle: TextStyle(color: Colors.white),
                ),
                child: Text('Previous Question', style: TextStyle(fontSize: 16)),
              ),
              ElevatedButton(
                onPressed: () {
                  if (widget.index < 9) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Questreview(index: widget.index + 1)),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  textStyle: TextStyle(color: Colors.white),
                ),
                child: Text('Next Question', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
          SizedBox(height: 80),
        ],
      ),
    ),
    );

  }
}

