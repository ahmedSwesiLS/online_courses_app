// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_courses_app/trending_course_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello,\nMahara Team',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      minRadius: 30,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-mohamed-abdelghaffar-771742.jpg&fm=jpg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCourseContainer(
                      upperContainerBackgroundImageUrl:
                          'https://img.freepik.com/free-vector/dark-gradient-background-with-copy-space_53876-99548.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais',
                      description: 'Chat With The\nSmartest Ai Now',
                      containerLogoUrl:
                          'https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/css3-512.png',
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TrendingCourseContainer(
                      containerLogoUrl:
                          'https://cdn0.iconfinder.com/data/icons/HTML5/512/HTML_Logo.png',
                      description: 'HTML Welcome From Course',
                      upperContainerBackgroundImageUrl:
                          'https://img.freepik.com/free-photo/vivid-blurred-colorful-wallpaper-background_58702-3798.jpg?w=1380&t=st=1705937376~exp=1705937976~hmac=785f377159d14a759024cff64850cb1ddb9d8988db2f974d5ad7558e12a82eb4',
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TrendingCourseContainer(
                      upperContainerBackgroundImageUrl:
                          'https://img.freepik.com/free-vector/dark-gradient-background-with-copy-space_53876-99548.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais',
                      description: 'Chat With The\nSmartest Ai Now',
                      containerLogoUrl:
                          'https://cdn4.iconfinder.com/data/icons/flat-brand-logo-2/512/css3-512.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Taken',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  MostTakenCourseRow(),
                  SizedBox(height: 16),
                  MostTakenCourseRow(),
                  SizedBox(height: 16),
                  MostTakenCourseRow(),
                  SizedBox(height: 16),
                  MostTakenCourseRow(),
                  SizedBox(height: 16),
                  MostTakenCourseRow(),
                  SizedBox(height: 16),
                  MostTakenCourseRow(),
                ],
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MostTakenCourseRow extends StatelessWidget {
  const MostTakenCourseRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://img.freepik.com/free-vector/dark-gradient-background-with-copy-space_53876-99548.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705795200&semt=ais',
            // height: 60,
            width: 100,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Text(
          'UI/UX Visual Design',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
