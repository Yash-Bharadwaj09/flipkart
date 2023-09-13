import 'package:flipkart/src/presentation/views/all_categories/all_categories.dart';
import 'package:flipkart/src/presentation/views/choose_language/choose_language.dart';
import 'package:flipkart/src/presentation/views/my_cart/my_cart.dart';
import 'package:flipkart/src/presentation/views/my_orders/my_orders.dart';
import 'package:flipkart/src/presentation/views/my_rewards/my_rewards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    size: 14,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const Expanded(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  "assets/flipkart.svg",
                  color: Colors.yellow,
                  height: 20,
                  width: 20,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
          _buildDrawer(
            title: "Flipkart Plus Zone",
            icon: Icons.star,
            onPressed: (){}
          ),
          const Divider(
            color: Colors.black12,
          ),
          _buildDrawer(
            title: "All Categories",
            icon: Icons.category_rounded,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AllCategories()));
              }
          ),
          _buildDrawer(
            title: "More on Flipkart",
            icon: Icons.more_vert,
              onPressed: (){}
          ),
          const Divider(
            color: Colors.black12,
          ),
          _buildDrawer(
            title: "Choose Language",
            icon: Icons.language,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChooseLanguage()));
              }
          ),
          const Divider(
            color: Colors.black12,
          ),
          _buildDrawer(
            title: "Offer Zone",
            icon: Icons.local_offer_outlined,
              onPressed: (){}
          ),
          _buildDrawer(
            title: "Sell on Flipkart",
            icon: Icons.shopping_bag_outlined,
              onPressed: (){}
          ),
          const Divider(
            color: Colors.black12,
          ),
          _buildDrawer(
            title: "My Orders",
            icon: Icons.file_copy,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyOrders()));
              }
          ),
          _buildDrawer(
            title: "My Rewards",
            icon: Icons.local_offer_sharp,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyRewards()));
              }
          ),
          _buildDrawer(
            title: "My Cart",
            icon: Icons.shopping_cart,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyCart()));
              }
          ),
          _buildDrawer(
            title: "My Wishlist",
            icon: Icons.heart_broken,
              onPressed: (){}
          ),
          _buildDrawer(
            title: "My Account",
            icon: Icons.person,
              onPressed: (){}
          ),
          _buildDrawer(
            title: "My Notifications",
            icon: Icons.notifications,
              onPressed: (){}
          ),
          _buildDrawer(
            title: "My Chats",
            icon: Icons.chat,
              onPressed: (){}
          ),
          const Divider(
            color: Colors.black12,
          ),
          ListTile(
            title: const Text(
              'Notification Preferences',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Help Centre',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Legal',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  _buildDrawer({
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 12,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: onPressed,
    );
  }
}
