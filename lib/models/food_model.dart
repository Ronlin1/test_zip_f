import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Centerid {
  String name;
  String address;
  LatLng locationCoords;
  Widget image;
  String no;

  Centerid({
    this.name,
    this.address,
    this.locationCoords,
    this.image,
    this.no,
  });
}

final List<Centerid> centerNames = [
  Centerid(
    address: 'Kampala Center',
    name: 'Kampala_FoodBank',
    no: '9012345678',
    locationCoords: LatLng(0.313611, 32.581111),
    image: Image(
      image: AssetImage('images/ce2.jpg'),
    ),
  ),
  Centerid(
    address: 'Entebbe Center',
    name: 'Entebbe_FoodBank',
    no: '1234567890',
    locationCoords: LatLng(0.042194, 32.443673),
    image: Image(
      image: AssetImage('images/ce9.png'),
      width: 70.0,
      height: 120.0,
    ),
  ),
  Centerid(
    address: 'Gulu Center',
    name: 'Gulu_FoodBank',
    no: '3456789012',
    locationCoords: LatLng(2.781198, 32.279474),
    image: Image(
      image: AssetImage('images/ce3.jpg'),
      width: 80.0,
      height: 160.0,
    ),
  ),
  Centerid(
    address: 'Mbarara Center',
    name: 'Mbarara_FoodBank',
    no: '5678901234',
    locationCoords: LatLng(-0.604850, 30.648688),
    image: Image(
      image: AssetImage('images/ce4.jpg'),
      width: 80.0,
    ),
  ),
  Centerid(
    address: 'Jinja Center',
    name: 'Jinja_FoodBank',
    no: '7890123456',
    locationCoords: LatLng(0.425776, 33.203483),
    image: Image(
      image: AssetImage('images/ce5.jpg'),
      width: 80.0,
    ),
  ),
  Centerid(
    address: 'Mbale Center',
    name: 'Mbale_FoodBank',
    no: '9012345678',
    locationCoords: LatLng(1.075477, 34.181242),
    image: Image(
      image: AssetImage('images/ce6.jpg'),
      width: 80.0,
    ),
  ),
];
