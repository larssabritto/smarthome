import 'package:flutter/material.dart';
import 'package:smart_home/app/pages/home/smart_device.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List SmartDevices = [
    ['Smart TV', "assets/images/icons/smart-tv.png",true],
    ['Smart Air', "assets/images/icons/air.png",false],
    ['Smart Light',"assets/images/icons/light.png",false],
    ['Alexa', "assets/images/icons/alexa.png",false],
    ['Smart Fan', "assets/images/icons/fan.png",false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      SmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/images/icons/menu.png",
                      height: 45,
                      color: const Color(0xff08182A),
                    ),
                  ),
                  IconButton(onPressed: () {} ,
                    icon: const Icon(
                      Icons.person,
                      size: 45,
                    ),
                    color: const Color(0xff08182A),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Bem- vinda,",
                    style: TextStyle(
                      color: Color(0xff08182A),
                    ),
                  ),
                  Text("Larissa Andrade",
                    style: TextStyle(fontSize: 30,
                      color: Color(0xff08182A),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                thickness: 0,
                color: Color(0xff08182A),
              ),
            ),
            const SizedBox(height: 30),
            Padding(padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text("Dispositivos",
                style: TextStyle(fontWeight:FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(29, 39, 47, 1),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: GridView.builder(
                itemCount: SmartDevices.length,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    iconPath: SmartDevices[index] [1],
                    smartDeviceName: SmartDevices [index] [0],
                    ligar: SmartDevices [index] [2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                }
            ),
            ),
          ],
        ),
      ),
    );
  }
}
