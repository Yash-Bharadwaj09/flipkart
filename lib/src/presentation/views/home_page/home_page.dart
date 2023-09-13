import 'package:flipkart/src/presentation/views/all_categories/all_categories.dart';
import 'package:flipkart/src/presentation/views/home_drawer/home_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Row(
          children: [
            Column(
              children: [
                RichText(
                    text: const TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  text: "Flipkart",
                  children: <TextSpan>[
                    TextSpan(
                      text: "Explore",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: "More",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.yellow,
                        fontSize: 13,
                      ),
                    )
                  ],
                )),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 12,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 12,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CupertinoColors.systemGrey6,
        selectedLabelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
              size: 12,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_bitcoin,
              color: Colors.grey,
              size: 12,
            ),
            label: 'SuperCoin',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.layers_rounded,
              color: Colors.grey,
              size: 12,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.currency_rupee,
              color: Colors.grey,
              size: 12,
            ),
            label: 'Credit',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gamepad_outlined,
              color: Colors.grey,
              size: 12,
            ),
            label: 'Game Zone',
          ),
        ],
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 220,
                    padding: const EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      onTap: () {},
                      style: const TextStyle(),
                      decoration: const InputDecoration(
                        enabled: true,
                        fillColor: CupertinoColors.systemGrey6,
                        focusColor: CupertinoColors.systemGrey6,
                        constraints: BoxConstraints(
                          maxHeight: 40,
                          maxWidth: 220,
                        ),
                        hintText: "Search for Products, Brands & More",
                        contentPadding: EdgeInsets.all(8.0),
                        hintStyle: TextStyle(fontSize: 12),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.grey,
                          size: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    _buildScrollable(
                      asset: "assets/flipkart.svg",
                      text: "All Categories",
                      color: Colors.yellow,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AllCategories()));
                      }
                    ),
                    _buildScrollable(
                      asset: "assets/offers.svg",
                      text: "Top Offers",
                      color: Colors.redAccent,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/fashion.svg",
                      text: "Clothing",
                      color: Colors.deepPurpleAccent,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/grocery.svg",
                      text: "Grocery",
                      color: Colors.teal,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/appliances.svg",
                      text: "Electronics",
                      color: Colors.purple,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/beauty.svg",
                      text: "Beauty Products",
                      color: Colors.orangeAccent,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/flight.svg",
                      text: "Flight Tickets",
                      color: Colors.brown,
                      onPressed: (){}
                    ),
                    _buildScrollable(
                      asset: "assets/sports.svg",
                      text: "Footwear",
                      color: Colors.black,
                      onPressed: (){}
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/image1.svg",
                      height: 300,
                      width: 370,
                      color: Colors.lightGreen,
                    ),
                    SvgPicture.asset(
                      "assets/image2.svg",
                      height: 300,
                      width: 370,
                    ),
                    SvgPicture.asset(
                      "assets/image3.svg",
                      height: 300,
                      width: 370,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        _buildContainer(
                          asset: "assets/appliances.svg",
                          text1: 'Electronics & More',
                          text2: 'From ₹999',
                          color: Colors.teal,
                        ),
                      ],
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        _buildContainer(
                          asset: "assets/grocery.svg",
                          text1: 'Grocery & More',
                          text2: 'From ₹99',
                          color: Colors.deepPurple,
                        ),
                      ],
                    )),
                    Expanded(
                      child: Column(
                        children: [
                          _buildContainer(
                            asset: "assets/beauty.svg",
                            text1: 'Beauty Products',
                            text2: 'From ₹499',
                            color: Colors.orangeAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.black12,
                height: 1.5,
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 95,
                width: 350,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [Colors.blue, Colors.green]),
                  color: CupertinoColors.systemGrey6,
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/asics.svg',
                            color: Colors.blueGrey,
                            height: 10,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/sports.svg',
                              color: Colors.black,
                              height: 70,
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Sports Shoes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Asics Running Shoes',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Upto 20% Off',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const DottedLine(
                direction: Axis.horizontal,
                dashColor: Colors.pinkAccent,
                dashRadius: 2.0,
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 450,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Explore New Selection',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Curated, Just for you',
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15,
                                    color: Colors.blue,
                                  ),
                                  padding: const EdgeInsets.all(8.0),
                                  style: const ButtonStyle(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                _buildNewSection(
                                  asset: "assets/toys.svg",
                                  text: 'BABY CARE',
                                  color: Colors.pink,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                _buildNewSection(
                                  asset: "assets/home.svg",
                                  text: 'HOME APPLIANCES',
                                  color: Colors.blueGrey,
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  _buildNewSection(
                                    asset: "assets/flight.svg",
                                    text: 'FLIGHT TICKETS',
                                    color: Colors.brown,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  _buildNewSection(
                                    asset: "assets/sports.svg",
                                    text: 'SPORTS SHOES',
                                    color: Colors.indigo,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildContainer({
    required String asset,
    required Color color,
    required String text1,
    required String text2,
  }) {
    return Container(
      height: 120,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: CupertinoColors.systemGrey6,
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            height: 60,
            width: 60,
            alignment: Alignment.center,
            color: color,
          ),
          const SizedBox(
            height: 2,
          ),
          const Divider(
            height: 1.0,
            color: Colors.black26,
            endIndent: 4.0,
            indent: 4.0,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }

  _buildNewSection({
    required String asset,
    required String text,
    required Color color,
  }) {
    return Container(
      height: 160,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            height: 100,
            width: 80,
            color: color,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Proxima Nova",
            ),
          ),
        ],
      ),
    );
  }

  _buildScrollable({
    required String asset,
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      height: 60,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            height: 40,
            width: 50,
            color: color,
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
