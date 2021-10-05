import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nonton/pages/detail_page.dart';
import 'package:nonton/theme.dart';

class MovieListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final DateTime releaseDate;
  final double rating;

  const MovieListItem({
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
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 30,
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 127,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
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
          ],
        ),
      ),
    );
  }
}
