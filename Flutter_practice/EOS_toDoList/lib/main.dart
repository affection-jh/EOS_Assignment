import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.withOpacity(0.3),
          leading: Image.asset('assets/images/eos_logo.png'),
          title: const Text(
            "EOS ToDoList",
            style: TextStyle(),
          ),
        ),
        body: Stack(
          //body
          children: [
            Container(
              color: Colors.lightGreen.withOpacity(0.3),
              height: 700,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              height: 200,
              color: Colors.white.withOpacity(0.8),
              child: Row(
                children: [
                  Container(
                    //eos 로고
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 10, color: Colors.grey),
                        borderRadius: BorderRadius.circular(140)),
                    child: Image.asset('assets/images/eos_logo.png'),
                  ),
                  const SizedBox(width: 35), //가로여백
                  const Expanded(
                    //이름및 소개글 위젯
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("정재훈",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Pretendard')),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Positive  Comfirmation  Positive  Future!",
                          style:
                              TextStyle(fontSize: 15, fontFamily: 'Continuous'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
