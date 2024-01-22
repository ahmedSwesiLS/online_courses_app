// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingCourseContainer extends StatelessWidget {
  const TrendingCourseContainer({
    required this.containerLogoUrl,
    required this.description,
    required this.upperContainerBackgroundImageUrl,
  });

  final String upperContainerBackgroundImageUrl, description, containerLogoUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      upperContainerBackgroundImageUrl,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                // child:
                // ClipRRect(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(12),
                //     topRight: Radius.circular(12),
                //   ),
                //   child: Image.network(
                //     'https://img.freepik.com/free-vector/dark-gradient-background-with-copy-space_53876-99548.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais',
                //     height: 100,
                //     width: 200,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                // height: 100,
                // width: 200,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                height: 100,
                width: 200,
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 35, right: 16),
                  child: Text(
                    description,
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Image.network(
                  containerLogoUrl,
                ),
              ),
              // backgroundImage: NetworkImage(

              // ),
            ),
          ),
        ],
      ),
    );
  }
}
