import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nonton/pages/detail_page.dart';

import '../theme.dart';

class MovieCarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final DateTime releaseDate;
  final double rating;

  const MovieCarouselItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.releaseDate,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: 300,
        margin: EdgeInsets.only(left: 24),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: extraBold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      DateFormat('MMM dd, yyyy').format(releaseDate),
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: rating >= 2 ? yellowColor : lightGreyColor,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 4 ? yellowColor : lightGreyColor,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 6 ? yellowColor : lightGreyColor,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 8 ? yellowColor : lightGreyColor,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 10 ? yellowColor : lightGreyColor,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
