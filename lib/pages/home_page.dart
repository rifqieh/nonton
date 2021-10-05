import 'package:flutter/material.dart';
import 'package:nonton/theme.dart';
import 'package:nonton/widgets/movie_carousel_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 29,
            ),
            Row(
              children: [
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: blackTextStyle.copyWith(
                        fontSize: 28,
                        fontWeight: black,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Watch much easier',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 55,
                  height: 45,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(259),
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icon_search.png',
                      width: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MovieCarouselItem(
                    imageUrl: 'assets/image_movie1.png',
                    title: 'John Wick 4',
                    rating: 10,
                    releaseDate: DateTime(2021, 6, 17),
                  ),
                  MovieCarouselItem(
                    imageUrl: 'assets/image_movie2.png',
                    title: 'Bohemian',
                    rating: 8,
                    releaseDate: DateTime(2020, 5, 11),
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
