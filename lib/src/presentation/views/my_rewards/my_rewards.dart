import 'package:flipkart/src/presentation/views/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/cupertino.dart';

class MyRewards extends StatefulWidget {
  const MyRewards({super.key});

  @override
  State<MyRewards> createState() => _MyRewardsState();
}

List<String> items = [
  "All",
  "Super Coin Zone",
  "GameZone",
  "Grocery",
  "Furniture",
];

  int current = 0;

class _MyRewardsState extends State<MyRewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'My Rewards',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 16,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
          },
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Add Coupon',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: SizedBox(
                  height: 25,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            current = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          width: 80,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: current == index
                            ? Border.all(
                                color: Colors.blue,width: 2.0
                            ) : Border.all(
                              color: Colors.black26
                            ) ,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                items[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        _buildContainer(
                          text: "Babycare Savings Pass",
                          subtext: "Valid Till 31 Sept 2023",
                          condition: "T&C",
                        ),
                        _buildContainer(
                          text: "₹9 Off on Bathroom Cleaner",
                          subtext: "Valid Till 30 Sept 2023",
                          condition: "T&C",
                        ),
                        _buildContainer(
                          text: "Grocery Offers from Brands",
                          subtext: "Valid Till 30 Sept 2023",
                          condition: "T&C",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        _buildContainer(
                          text: "₹17 Off on Floor Cleaner",
                          subtext: "Valid Till 25 Sept 2023",
                          condition: "T&C",
                        ),
                        _buildContainer(
                          text: "₹9 Off on Dabur Red Paste",
                          subtext: "Valid Till 25 Sept 2023",
                          condition: "T&C",
                        ),
                        _buildContainer(
                          text: "Babycare Savings Pass",
                          subtext: "Valid Till 31 Sept 2023",
                          condition: "T&C",
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildContainer({
    required String text,
    required String subtext,
    required String condition,
  }) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        height: 200,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          border: Border.all(
            color: Colors.black26,
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: SvgPicture.asset(
                "assets/flipkart.svg",
                fit: BoxFit.contain,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              subtext,
              style: const TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              condition,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
