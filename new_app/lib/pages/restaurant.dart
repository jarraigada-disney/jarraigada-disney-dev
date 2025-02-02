import 'package:flutter/material.dart';
class Restaurant extends StatelessWidget{
  final int id;
  final String name;
  final String parkName;
  final String img;
  const Restaurant({
    super.key,
    required this.id,
    required this.name,
    required this.parkName,
    required this.img
    });
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
<<<<<<< HEAD
              SizedBox(
                height: screenSize.height*0.3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/sunshine-tree-terrace-01-new.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
=======
              _RestaurantCoverImage(screenSize: screenSize),
>>>>>>> bb3d68a (Widgets extracted)
              _RestaurantInfo(name: name),
              _ArrivallWindows()
            ],
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
=======

class _RestaurantCoverImage extends StatelessWidget {
  const _RestaurantCoverImage({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height*0.3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sunshine-tree-terrace-01-new.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

>>>>>>> bb3d68a (Widgets extracted)
class _ArrivallWindows extends StatelessWidget {
  const _ArrivallWindows();
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class _RestaurantInfo extends StatelessWidget {
  const _RestaurantInfo({
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        name)
    );
  }
}




