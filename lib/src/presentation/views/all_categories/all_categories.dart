import 'package:flipkart/src/presentation/views/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'All Categories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 12,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
              },
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 12,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
                size: 12,
              )),
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
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: [
          _buildContaiiner(
            image: "assets/mobile.svg",
            text: "Mobiles",
            screencolor: Colors.grey,
          ),
          _buildContaiiner(
            image: "assets/fashion.svg",
            text: "Fashion",
            screencolor: Colors.blueGrey,
          ),
          _buildContaiiner(
            image: "assets/electronics.svg",
            text: "Electronics",
            screencolor: Colors.black54,
          ),
          _buildContaiiner(
            image: "assets/home.svg",
            text: "Home",
            screencolor: Colors.black45,
          ),
          _buildContaiiner(
            image: "assets/household.svg",
            text: "Appliances",
            screencolor: Colors.indigo,
          ),
          _buildContaiiner(
            image: "assets/beauty.svg",
            text: "Beauty",
            screencolor: Colors.redAccent,
          ),
          _buildContaiiner(
            image: "assets/toys.svg",
            text: "Toys & Baby",
            screencolor: Colors.pink.shade300,
          ),
          _buildContaiiner(
            image: "assets/sports.svg",
            text: "Sports",
            screencolor: Colors.green,
          ),
          _buildContaiiner(
            image: "assets/furniture.svg",
            text: "Furniture",
            screencolor: Colors.grey,
          ),
          _buildContaiiner(
            image: "assets/grocery.svg",
            text: "Grocery",
            screencolor: Colors.black,
          ),
          _buildContaiiner(
            image: "assets/flight.svg",
            text: "Flights",
            screencolor: Colors.brown,
          ),
          _buildContaiiner(
            image: "assets/heritage.svg",
            text: "Indian Heritage",
            screencolor: Colors.black,
          ),
          _buildContaiiner(
            image: "assets/insurance.svg",
            text: "Insurance",
            screencolor: Colors.black54,
          ),
          _buildContaiiner(
            image: "assets/food.svg",
            text: "Food & More",
            screencolor: Colors.blueGrey,
          ),
          _buildContaiiner(
            image: "assets/mobile.svg",
            text: "Refurbished",
            screencolor: Colors.black,
          ),
          _buildContaiiner(
            image: "assets/fashion.svg",
            text: "Clothing",
            screencolor: Colors.blueAccent,
          ),
          _buildContaiiner(
            image: "assets/appliances.svg",
            text: "Accessories",
            screencolor: Colors.black,
          ),
          _buildContaiiner(
            image: "assets/sports.svg",
            text: "Shoes",
            screencolor: Colors.indigo,
          ),
        ],
      ),
    );
  }

  _buildContaiiner({
    required String image,
    required String text,
    required Color screencolor,
  }) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.black12,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              height: 70,
              alignment: Alignment.center,
              color: screencolor,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
