import 'package:cari_kos/models/space.dart';
import 'package:cari_kos/theme.dart';
import 'package:cari_kos/widgets/facility_item.dart';
import 'package:cari_kos/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'error_page.dart';

class DetailPage extends StatelessWidget {
  final Space space;
  DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              space.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      //NoTE:TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$${space.price}',
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '/ month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2),
                                  child: RatingItem(
                                    index: index,
                                    rating: space.rating,
                                  ),
                                );
                              }).toList(),
                              //   RatingItem(
                              //     index: 1,
                              //     rating: space.rating,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   RatingItem(
                              //     index: 1,
                              //     rating: space.rating,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   RatingItem(
                              //     index: 1,
                              //     rating: space.rating,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //   RatingItem(
                              //     index: 1,
                              //     rating: space.rating,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              //  RatingItem(
                              //     index: 1,
                              //     rating: space.rating,
                              //   ),
                              //   SizedBox(
                              //     width: 2,
                              //   ),
                              // ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //NOTE:MAIN FACILITES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: ' kitchen',
                              imageurl: 'assets/ic-kitchen.png',
                              total: space.numberOfKitchens,
                            ),
                            FacilityItem(
                              name: ' bedroom',
                              imageurl: 'assets/ic-bed.png',
                              total: space.numberOfBedrooms,
                            ),
                            FacilityItem(
                              name: ' Big Lemari',
                              imageurl: 'assets/ic-cupboard.png',
                              total: space.numberOfCupboards,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //NOTE:PHOTOS
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: space.photos.map((item) {
                            return Container(
                              margin: EdgeInsets.only(
                                left: 24,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  item,
                                  width: 110,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          //  [
                          //   SizedBox(
                          //     width: edge,
                          //   ),
                          //   Image.asset(
                          //     'assets/photo-1.png',
                          //     width: 110,
                          //     height: 88,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: 18,
                          //   ),
                          //   Image.asset(
                          //     'assets/photo-2.png',
                          //     width: 110,
                          //     height: 88,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: 18,
                          //   ),
                          //   Image.asset(
                          //     'assets/photo-3.png',
                          //     width: 110,
                          //     height: 88,
                          //     fit: BoxFit.cover,
                          //   ),
                          //   SizedBox(
                          //     width: edge,
                          //   ),
                          // ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //NOTE:LOCATION
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Location',
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${space.address}\n${space.city}',
                        style: greyTextStyle,
                      ),
                      InkWell(
                        onTap: () {
                          // launchUrl(
                          //     'https://www.google.co.id/maps/@-6.2008406,106.7987143,16z?hl=id');
                          launchUrl(space.mapUrl);
                        },
                        child: Image.asset(
                          'assets/maps.png',
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: RaisedButton(
                    onPressed: () {
                      launchUrl('tel:${space.phone}');
                    },
                    color: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Text(
                      'Book Now',
                      style: WhiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
