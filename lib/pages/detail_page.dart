import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nonton/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            SizedBox(
              height: 39,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 150,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image_movie5.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark II',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: extraBold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      DateFormat('MMM dd, yyyy').format(DateTime(2021, 9, 11)),
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: 10 >= 2 ? yellowColor : lightGreyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 4 ? yellowColor : lightGreyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 6 ? yellowColor : lightGreyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 8 ? yellowColor : lightGreyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 10 ? yellowColor : lightGreyColor,
                          size: 18,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '13K',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'people',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '1h 30min',
                      style: blackTextStyle,
                    ),
                    Text(
                      'Dolby Production',
                      style: greyTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Text(
              'Movie Synopsis',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The Dark is a 2018 Austrian horror film written and directed by Justin P. Lange and starring Nadia Alexander, Toby Nichols, and Karl Markovics.\n\ntrying to succeed as something both metaphorical and very literal-minded, the movie ends up being neither one.',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Gallery',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image_gallery1.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image_gallery2.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image_gallery3.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              child: Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.only(top: 41),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  child: Text(
                    'Buy Ticket',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
