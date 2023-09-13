import 'package:flipkart/src/presentation/views/home_page/home_page.dart';
import 'package:flipkart/src/presentation/views/phone_login/phone_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'Choose Language',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 18,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhoneLogin(),
                ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              _buildContainer(
                text1: "हिंदी",
                text2: "Hindi",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Punjabi",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Assamese",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Telugu",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Tamil",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Bengali",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Marathi",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Kannada",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "हिंदी",
                text2: "Odia",
                image: "assets/flipkart.svg",
              ),
              _buildContainer(
                text1: "English",
                text2: "English",
                image: "assets/flipkart.svg",
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
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
    required String text1,
    required String text2,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 350,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black26,
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        text2,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black45,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SvgPicture.asset(
                  image,
                  color: Colors.grey.shade500,
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
