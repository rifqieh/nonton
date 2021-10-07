import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nonton/models/movie_model.dart';
import 'package:nonton/pages/success_page.dart';
import 'package:nonton/theme.dart';

class DetailPage extends StatelessWidget {
  final MovieModel movie;

  const DetailPage({
    Key? key,
    required this.movie,
  }) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Icon(
                      Icons.chevron_left,
                    ),
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
                      image: NetworkImage(movie.posterPath),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: extraBold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        DateFormat('MMM dd, yyyy').format(movie.releaseDate),
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
                            color: movie.voteAverage >= 2
                                ? yellowColor
                                : lightGreyColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: movie.voteAverage >= 4
                                ? yellowColor
                                : lightGreyColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: movie.voteAverage >= 6
                                ? yellowColor
                                : lightGreyColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: movie.voteAverage >= 8
                                ? yellowColor
                                : lightGreyColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: movie.voteAverage >= 10
                                ? yellowColor
                                : lightGreyColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            movie.voteCount.toString(),
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
              movie.overview,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  child: Text(
                    'Buy Ticket',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
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
