import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:tonoun/provider/dark_theme_provider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:tonoun/screen/cart.dart';
import 'package:tonoun/screen/categories.dart';
import 'package:tonoun/sevices/utils.dart';
import 'package:tonoun/sevices/widgets/menu_detail.dart';
import 'package:tonoun/sevices/widgets/menu_widget.dart';

import '../sevices/widgets/categories_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [
    'assets/images/offres/jonathan-petersson-ARU18GpF6QQ-unsplash.jpg',
  ];

  List<Color> gridColors = [
    const Color(0xff53B175),
    const Color(0xffF8A44c),
    const Color(0xffF7A593),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
    const Color(0xff53B175),
  ];

  List<Map<String, dynamic>> toto = [
    {
      'imgPath':
          'assets/images/—Pngtree—football player silhouette_1797620.png',
      'catText': 'ຈອງເດີ່ນບານ',
    },
    {
      'imgPath': 'assets/images/pngwing.com (1).png',
      'catText': 'ຈອງເດີ່ນຕີດອກ',
    },
    {
      'imgPath': 'assets/images/pngwing.com.png',
      'catText': 'ຮ້ານຂາຍເຄື່ອງ',
    },
    {
      'imgPath': 'assets/images/pngwing.com.png',
      'catText': 'ຮ້ານຂາຍເຄື່ອງ',
    },
  ];
  List<String> entries = [
    'assets/images/i.jpeg',
    'assets/images/q.jpeg',
    'assets/images/w.jpeg',
    'assets/images/p.jpeg',
    'assets/images/pk.jpeg',
    'assets/images/e.jpeg',
  ];
  List<String> entrie = [
    'ເດີ່ນບານທະນົງອາດ',
    'ເດີ່ນບານທະນົງອາດ',
    'ເດີ່ນບານເສດຖາ',
    'ເດີ່ນຫຼັກ9',
    'ເດີ່ນບານpk',
    'ເດີ່ນດອກປີກໄກ່ຄຳເສັງ',
    
  ];
  List<int> colorCodes = <int>[600, 500, 100];

  List<String> news = [
    'assets/images/istockphoto-1141191007-612x612.jpg',
    'assets/images/istockphoto-1141191007-612x612.jpg',
    'assets/images/istockphoto-1141191007-612x612.jpg'
  ];

  final List<Map<String, dynamic>> tonoun = [
    {'page': const MenuDetails(), 'title': 'Home Screen'},
    {'page': CategoriesScreen(), 'title': 'Categories Screen'},
    {'page': const CartScreen(), 'title': 'Cart Screen'},
    {'page': const HomeScreen(), 'title': 'UserScreen'},
  ];

  @override
  Widget build(BuildContext context) {
    // final Utils utils = Utils(context);
    // final ThemeState = utils.getTheme;
    Size size = Utils(context).screenSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(
                    _offerImages[index],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: _offerImages.length,
                pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Colors.red)),
                // control: SwiperController(color:Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'ບໍລິການທັງໝົດ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                  height: size.height * 0.13,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 50),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MenuDetails()));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                    'assets/images/—Pngtree—football player silhouette_1797620.png'),
                                width: 55,
                                height: 55,
                              ),
                              Text(
                                "ຈອງເດີ່ນບານ",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const MenuDetails()));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                    'assets/images/pngwing.com (1).png'),
                                width: 55,
                                height: 55,
                              ),
                              Text(
                                "ຈອງເດີ່ນຕີບານ",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoriesScreen()));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                    'assets/images/pngwing.com.png'),
                                width: 55,
                                height: 55,
                              ),
                              Text(
                                "ຮ້ານຄ້າ",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const HomeScreen()));
                      //   },
                      //   child: Container(
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: const [
                      //         Image(
                      //           image: AssetImage(
                      //               'assets/images/—Pngtree—football player silhouette_1797620.png'),
                      //           width: 55,
                      //           height: 55,
                      //         ),
                      //         Text(
                      //           "ໄລ້ສົດ",
                      //           style: TextStyle(fontSize: 15),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'ເດີ່ນກິລາຍອດນິຍົມ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.13,
              width: size.width * 1,
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                width: size.width * 0.45,
                                height: size.height * 0.1,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(entries[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    width: 2,
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'ຂ່າວສານກິລາ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.25,
              width: size.width * 1,
              child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  width: size.width * 0.9,
                                  height: size.height * 0.21,
                                  // color: Colors.amber[colorCodes[index]],

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(news[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
