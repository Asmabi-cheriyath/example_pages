import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpeg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'My Adds',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, left: 5, right: 5),
              child: SizedBox(
                  height: 30,
                  child: SearchBar(
                    hintText: "Products",
                    hintStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.black45, fontSize: 14)),
                    leading: Icon(Icons.search),
                  )),
            ),
            const SizedBox(height: 35,),
            Center(
                child: Container(
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 3.0,
                              spreadRadius: 0.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.amberAccent,
                            radius: 35,
                          ),
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Text("   Elegent Watches"),
                            Text("Kerala,Manjeri")
                          ],
                        )
                      ],
                    ))),
                    const SizedBox(height: 30,),
                    Center(
                child: Container(
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 3.0,
                              spreadRadius: 0.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.amberAccent,
                            radius: 35,
                          ),
                        ),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            Text("   Elegent Watches"),
                            Text("Kerala,Manjeri")
                          ],
                        )
                      ],
                    ))),
          ],
        ),
      )),
    );
  }
}
