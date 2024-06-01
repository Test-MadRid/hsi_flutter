import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.plusJakartaSansTextTheme()),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            leading: Container(
                alignment: Alignment.center,
                child: Image.asset('assets/hsi_logo.png')),
            title: Text(
              'EDU HSI',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'v.2402-1601',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          body: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Assalamualaikum,'),
                      Text(
                        'MUHAMMAD RIDWAN',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text('ARN212-28202')
                    ]),
              ),
              Container(height: 210, child: CarouselWithIndicator()),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Evaluasi',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.blue[50]),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 7),
                                child: Text(
                                  'Majalah HSI',
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                  ),
                                ),
                              ),
                              Text(
                                'Aktif',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Kuis Majalah HSI Edisi 58',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              )),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              alignment: Alignment.centerLeft,
                              child: Text('Majalah 1444H')),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.menu_open_outlined),
                                    Text('10 Soal'),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 137,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    borderRadius: BorderRadius.circular(7)),
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 7),
                                child: Row(
                                  children: [
                                    Icon(Icons.timer_off_outlined),
                                    Text('Rabu,21 Feb 2024 . 12:00'),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            width: MediaQuery.of(context).size.width,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Kerjakan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.green[400])),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
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
                // enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSmoothIndicator(
                activeIndex: _current,
                count: imgList.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Color.fromARGB(255, 191, 190, 218),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

final List<String> imgList = [
  'assets/Banner/1.png',
  'assets/Banner/2.png',
  'assets/Banner/3.png',
  'assets/Banner/4.png',
  'assets/Banner/5.png',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();
