import 'package:coffe_flutter/components/mocks/drinks.dart';
import 'package:flutter/material.dart';

class ProductScreenState extends StatelessWidget {
  final Drink product;

  ProductScreenState({super.key, required this.product});

  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF474747)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("CoffeTime",
            style: TextStyle(
              color: Color(0xFF474747),
              fontSize: 22,
              fontFamily: 'Lobster',
            )),
        centerTitle: true,
        backgroundColor: const Color(0xFFF6F6F6),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(product.image)),
                  ),
                  child: Stack(
                    children: const [
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Image(
                            image: AssetImage('assets/images/hit.png'),
                          )),
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 35)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 22)),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Color(0xFF474747),
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 8)),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 16)),
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 24)),
                        Column(
                          children: [
                            Material(
                              shape: const CircleBorder(),
                              color: const Color(0xFFC8D9AF),
                              child: InkWell(
                                splashColor: Colors.transparent, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Icon(
                                      Icons.local_drink,
                                      color: Color(0xFF717171),
                                    )),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              product.milkVolume,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF474747),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SF-UI-Text-Light.otf'),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 16)),
                        Column(
                          children: [
                            Material(
                              shape: const CircleBorder(),
                              color: const Color(0xFFCFE7EC),
                              child: InkWell(
                                splashColor: Colors.transparent, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Icon(
                                      Icons.grain,
                                      color: Color(0xFF717171),
                                    )),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              product.coffeePercent,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF474747),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SF-UI-Text-Light.otf'),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 16)),
                        Column(
                          children: [
                            Material(
                              shape: const CircleBorder(),
                              color: const Color(0xFFF7ECDA),
                              child: InkWell(
                                splashColor: Colors.transparent, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Icon(
                                      Icons.opacity,
                                      color: Color(0xFF717171),
                                    )),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              product.volume,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF474747),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SF-UI-Text-Light.otf'),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 16)),
                        Column(
                          children: [
                            Material(
                              shape: const CircleBorder(),
                              color: const Color(0xFFEEF3C0),
                              child: InkWell(
                                splashColor: Colors.transparent, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Icon(
                                      Icons.device_thermostat,
                                      color: Color(0xFF717171),
                                    )),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              product.temperature,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF474747),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SF-UI-Text-Light.otf'),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(left: 16)),
                        Column(
                          children: [
                            Material(
                              shape: const CircleBorder(),
                              color: Colors.grey,
                              child: InkWell(
                                splashColor: Colors.transparent, // Splash color
                                onTap: () {},
                                child: const SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Icon(
                                      Icons.speed,
                                      color: Color(0xFF717171),
                                    )),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              product.energy,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF474747),
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SF-UI-Text-Light.otf'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(21, 31, 21, 0),
                      child: Text(
                        product.description,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF717171),
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF-UI-Text-Light.otf',
                            height: 1.4),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 24)),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21, vertical: 0),
                  child: Divider(
                    height: 2,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 21, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 21),
                        child: Text(product.price,
                            style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF717171),
                                fontFamily: 'SF-UI-Text-Regular.otf')),
                      ),
                      ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC8D9AF),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 64),
                        ),
                        child: const Text("заказать",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'SF-UI-Text-Regular.otf')),
                      )
                    ],
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
