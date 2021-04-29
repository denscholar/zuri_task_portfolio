import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) => LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [Colors.black, Colors.black45]).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dennis.jpg'),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.darken)),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/dennis.jpg'),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: Center(
                  child: Text(
                    'Dennis Akagha',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Click to read my objective',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'd.akagha20@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: 1.0,
                                ),
                              )
                            ],
                          )),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 250.0,
                      decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                '+2348145986650',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: 2.5,
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              )

              //
            ],
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
            color: Colors.orangeAccent,
            height: 130,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: Text(
                    'I am a highly motivated and creative flutter developer seeking to get a position in a fast-paced company where technical skills and creative thinking are encouraged.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                // color: kWhite,
                size: 50.0,
              ),
            ));
      });
}
