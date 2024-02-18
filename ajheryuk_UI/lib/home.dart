import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            child: Image.asset('assets/gambar/avatar_1.png')),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            width: 10,
                            height: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, Samuel!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/gambar/award.png'),
                            Text(
                              ' +1600 ',
                              style: TextStyle(
                                  color: Color(0xFFFCD034),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Points',
                              style: TextStyle(color: Colors.amber),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    child: Stack(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            'assets/gambar/notification.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(100)),
                            width: 10,
                            height: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Story(story: 'assets/story/story (1).jpg'),
                  Story(story: 'assets/story/story (2).jpg'),
                  Story(story: 'assets/story/story (3).jpg'),
                  Story(story: 'assets/story/story (4).jpg'),
                  Story(story: 'assets/story/story (5).jpg'),
                  Story(story: 'assets/story/story (6).jpg'),
                  Story(story: 'assets/story/story (7).jpg'),
                  Story(story: 'assets/story/story (8).jpg'),
                  Story(story: 'assets/story/story (9).jpg'),
                  Story(story: 'assets/story/story (10).jpg'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Upcoming ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'course of this week',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  category(
                    title: "All",
                    status: true,
                  ),
                  category(
                    title: "UI/UX",
                    status: false,
                  ),
                  category(
                    title: "Illustration",
                    status: false,
                  ),
                  category(
                    title: "3D Animation",
                    status: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(height: 300, child: CarouselWithIndicatorDemo())
          ],
        ),
      ),
    );
  }
}

class category extends StatelessWidget {
  const category({
    super.key,
    required this.title,
    required this.status,
  });
  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: status == true ? Colors.red[400] : Colors.grey[100]),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 14, color: status == true ? Colors.white : Colors.grey),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.story,
  });
  final String story;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 245, 98, 95), width: 3),
                borderRadius: BorderRadius.circular(22)),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(story)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsetsDirectional.all(3),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[200],
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              width: 25,
              height: 25,
              child: Image.asset(
                'assets/logo/Video.png',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 20.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: (_current == entry.key
                          ? Colors.red[400]
                          : Colors.grey[300])),
                ),
              );
            }).toList(),
          ),
        ]),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
