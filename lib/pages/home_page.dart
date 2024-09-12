import 'package:flutter/material.dart';
import 'customDropdown.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _pageTitle(),
                  _astroData(),
                ],
              ),
              Align(
                child: _astroImageWidget(),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
      child: Text(
        "#GO MOON",
        style: TextStyle(
            color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      width: _deviceWidth * .64,
      height: _deviceHeight * .5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _astroInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        dropDown_page(
          list: ["JUPYTER", "MARS", "SATURN", "URANUS", "ALKMANIA"],
          width: 144,
        ),
        dropDown_page(
          list: ["1", "2", "3", "4", "5"],
          width: 144,
        ),
      ],
    );
  }

  // Widget _printDeviceHeightWidth() {
  //   return Column(
  //     children: [
  //       Text(
  //         "Device Height: $_deviceHeight",
  //         style: TextStyle(
  //           fontSize: 50,
  //           fontWeight: FontWeight.bold,
  //           color: Colors.green,
  //         ),
  //       ),
  //       Text(
  //         "Device Width: $_deviceWidth",
  //         style: TextStyle(
  //           fontSize: 50,
  //           fontWeight: FontWeight.bold,
  //           color: Colors.green,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _destination() {
    return dropDown_page(list: [
      "JAMES WEB STATION",
      "THANOS ULTRA STATION",
      "MICRO HUB PEAK POINT",
    ], width: _deviceWidth);
  }

  Widget _bookRideButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      height: 37,
      child: MaterialButton(
        height: 37,
        onPressed: () {},
        child: const Text(
          "Book a Ride!",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _astroData() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _destination(),
          SizedBox(
            height: 20,
          ),
          _astroInformation(),
          SizedBox(
            height: 20,
          ),
          _bookRideButton(),
        ],
      ),
    );
  }
}
