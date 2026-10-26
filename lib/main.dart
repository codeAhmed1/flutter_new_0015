import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          Future.delayed(Duration(seconds: 5), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: (Text(
                      'my app',
                      style: TextStyle(color: Colors.white),
                    )),
                    backgroundColor: Color.fromARGB(255, 5, 59, 236),
                  ),

                  body: Column(
                    children: [
                      Center(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1765202663961-fbc9f44e6ce5?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Image.asset('img/earth.png',
                     height: 60, width: 60),
                  ),

                Text('انتظار....' , style: TextStyle(color: Colors.blue),),

                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
