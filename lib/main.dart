import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  var _pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "UI",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "이용서비스",
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: "내정보",
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {

  var imageItems = [
    "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fthumb2.gettyimageskorea.com%2Fimage_preview%2F700%2F201808%2FFPX%2F987711294.jpg&type=a340",
    "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MDJfNTkg%2FMDAxNjIyNTk3NjgzMzE2.rmwE9v02hJuvd6S1-RG58UhitoDlhS32YWScCtkcvGMg.CP-Y562G88a9tzlVKgg33_n4Zn5IEF_-HLEhxgcK7aUg.JPEG.mode21c%2F1_%2528249%2529.jpg&type=a340",
    "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fthumb2.gettyimageskorea.com%2Fimage_preview%2F700%2F201808%2FFPX%2F987711294.jpg&type=a340",
    "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MDJfNTkg%2FMDAxNjIyNTk3NjgzMzE2.rmwE9v02hJuvd6S1-RG58UhitoDlhS32YWScCtkcvGMg.CP-Y562G88a9tzlVKgg33_n4Zn5IEF_-HLEhxgcK7aUg.JPEG.mode21c%2F1_%2528249%2529.jpg&type=a340",
    "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MDJfNTkg%2FMDAxNjIyNTk3NjgzMzE2.rmwE9v02hJuvd6S1-RG58UhitoDlhS32YWScCtkcvGMg.CP-Y562G88a9tzlVKgg33_n4Zn5IEF_-HLEhxgcK7aUg.JPEG.mode21c%2F1_%2528249%2529.jpg&type=a340",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildModdle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  print("클릭");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text("Taxi")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("2");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text("Taxi")
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text("Taxi")
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                  ),
                  Text("Taxi")
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text("Taxi")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text("Taxi")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 40,
                    ),
                    Text("Taxi")
                  ],
                ),
                Opacity(
                  opacity: 0.0,
                  child: Column(
                    children: [
                      Icon(
                        Icons.local_taxi,
                        size: 40,
                      ),
                      Text("Taxi")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModdle() {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [0,1,2,3,4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageItems[i],
                    fit: BoxFit.cover,
                  ),
                )
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    return Text('bottom');
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "service",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "mypage",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
