import 'package:chozy/models/city.dart';
import 'package:chozy/models/space.dart';
import 'package:chozy/models/tips.dart';
import 'package:chozy/pages/space_card.dart';
import 'package:chozy/providers/space_provider.dart';
import 'package:chozy/theme.dart';
import 'package:chozy/widgets/city_card.dart';
import 'package:chozy/widgets/navbar.dart';
import 'package:chozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          // NOTE: HEADER
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.only(left: edge),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(
                    City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Bogor',
                        imageUrl: 'assets/city3.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Bali',
                        imageUrl: 'assets/city1.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Padang',
                        imageUrl: 'assets/city3.png',
                        isPopular: false),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: FutureBuilder(
                  // future: spaceProvider.getRecommendedSpaces(),
                  builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // List<Space> data = snapshot.data;

                  Column(
                    children: [
                      SpaceCard(
                        Space(
                            id: 1,
                            name: 'Kurerakeso Hott',
                            imageUrl: 'assets/rec1.png',
                            price: 52,
                            city: 'Bandung',
                            county: 'Indonesian',
                            rating: 4),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                            id: 2,
                            name: 'Roemah Nenek',
                            imageUrl: 'assets/rec2.png',
                            price: 42,
                            city: 'Hanoi',
                            county: 'Vietnam',
                            rating: 5),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SpaceCard(
                        Space(
                            id: 3,
                            name: 'Tororo Homs',
                            imageUrl: 'assets/rec3.png',
                            price: 52,
                            city: 'Tokyo',
                            county: 'Japan',
                            rating: 5),
                      ),
                    ],
                  );
                }
                return Column(
                  children: [
                    SpaceCard(
                      Space(
                          id: 1,
                          name: 'Kurerakeso Hott',
                          imageUrl: 'assets/rec1.png',
                          price: 52,
                          city: 'Bandung',
                          county: 'Indonesian',
                          rating: 4),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                          id: 2,
                          name: 'Roemah Nenek',
                          imageUrl: 'assets/rec2.png',
                          price: 42,
                          city: 'Hanoi',
                          county: 'Vietnam',
                          rating: 5),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                          id: 3,
                          name: 'Tororo Homs',
                          imageUrl: 'assets/rec3.png',
                          price: 52,
                          city: 'Tokyo',
                          county: 'Japan',
                          rating: 5),
                    ),
                  ],
                );
                // Center(
                //   // child: CircularProgressIndicator(),

                // );
              }),
            ),
            SizedBox(
              height: 30,
            ),
            //NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        title: 'Guites',
                        update: '04 Apr',
                        imageUrl: 'assets/tips1.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 2,
                        title: 'Tips & Trik',
                        update: '04 Oct',
                        imageUrl: 'assets/tips2.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Navbar(imageUrl: 'assets/icon_home_active.png', isActive: true),
            Navbar(
                imageUrl: 'assets/icon_message_inactive.png', isActive: false),
            Navbar(imageUrl: 'assets/icon_card_inactive.png', isActive: false),
            Navbar(imageUrl: 'assets/icon_love_inactive.png', isActive: false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
